PROG=CU-SeeMe
BIN=bin
MLVWMRC_CONF=.mlvwm
MPV_CONF=.config/mpv
PIXMAP=$(MLVWMRC_CONF)/pixmap
APPS=$(MLVWMRC_CONF)/apps
SHADERS=$(MPV_CONF)/shaders

install:
	mkdir -p $(HOME)/$(BIN)
	install -m700 -o $(USER) $(BIN)/$(PROG) $(HOME)/$(BIN)
	mkdir -p $(HOME)/$(PIXMAP)
	cp -R $(PIXMAP)/* $(HOME)/$(PIXMAP)
	mkdir -p $(HOME)/$(APPS)
	cp -R $(APPS)/* $(HOME)/$(APPS)

uninstall:
	rm $(HOME)/$(BIN)/$(PROG)
	rm $(HOME)/$(APPS)/$(PROG)
	rm $(HOME)/$(PIXMAP)/$(PROG).xpm
	rm $(HOME)/$(SHADERS)/noise.glsl

clean:
	rm -r .config
