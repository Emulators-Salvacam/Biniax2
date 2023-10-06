# BINIAX-2 1.3 MAKEFILE FOR UNIX/LINUX/MACOS SYSTEMS
# (C) 2005-2009, JORDAN TUZSUZOV
# To build the game you need the development libraries of SDL 1.2, SDL_mixer and SDL_image.
# To execute the game you need the runtimes of SDL, SDL_mixer and SDL_image.

FLAGS=-W -WALL

DEVPREFIX=/opt/miyoo
CC=$(DEVPREFIX)/usr/bin/arm-linux-gcc

FILES=src/biniax.c src/hof.c src/cfg.c src/gfx.c src/snd.c src/inp.c src/sys.c
INCLUDES=-I . -I src
LINKTO=-lSDL -lSDL_mixer -lSDL_image
AUTO=`sdl-config --libs --cflags`
TARGET=biniax2

biniax:
	$(CC) $(AUTO) $(FILES) $(INCLUDES) -o $(TARGET) $(LINKTO)
