PROG=CU-SeeMe
BIN=bin
MLVWMRC_CONF=.mlvwm
MPV_CONF=.config/mpv
PIXMAP=$(MLVWMRC_CONF)/pixmap
APPS=$(MLVWMRC_CONF)/apps
SHADERS=$(MPV_CONF)/shaders

fetch-shader:
	mkdir -p $(SHADERS)
	ftp -o "$(SHADERS)/noise.glsl" "https://raw.githubusercontent.com/haasn/gentoo-conf/refs/heads/xor/home/nand/.mpv/shaders/noise.glsl"

install: fetch-shader
	mkdir -p $(HOME)/$(BIN)
	install -m700 -o $(USER) $(BIN)/$(PROG) $(HOME)/$(BIN)
	mkdir -p $(HOME)/$(PIXMAP)
	cp -R $(PIXMAP)/* $(HOME)/$(PIXMAP)
	mkdir -p $(HOME)/$(APPS)
	cp -R $(APPS)/* $(HOME)/$(APPS)
	mkdir -p $(HOME)/$(SHADERS)
	cp -R $(SHADERS)/* $(HOME)/$(SHADERS)

uninstall:
	rm $(HOME)/$(BIN)/$(PROG)
	rm $(HOME)/$(APPS)/$(PROG)
	rm $(HOME)/$(PIXMAP)/$(PROG).xpm
	rm $(HOME)/$(SHADERS)/noise.glsl

clean:
	rm -r .config
