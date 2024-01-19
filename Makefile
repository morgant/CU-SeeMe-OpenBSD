BIN=bin
CONF=.mlvwm
PIXMAP=$(CONF)/pixmap
APPS=$(CONF)/apps

install:
	mkdir -p $(HOME)/$(BIN)
	install -m700 -o $(USER) $(BIN)/CU-SeeMe $(HOME)/$(BIN)
	cp -R $(PIXMAP)/* $(HOME)/$(PIXMAP)
	cp -R $(APPS)/* $(HOME)/$(APPS)
