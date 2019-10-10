.RECIPEPREFIX +=
CC = gcc
CFLAGS = -Wall -lm -lrt -lwiringPi

PROG = bin/*
OBJS = obj/*

default:
    mkdir -p bin obj
    $(CC) $(CFLAGS) -c src/Sensor.c -o obj/Sensor
    $(CC) $(CFLAGS) -c src/CurrentTime.c -o obj/CurrentTime
    $(CC) $(CFLAGS) obj/Sensor obj/CurrentTime -o bin/Sensor

run:
    sudo ./bin/Sensor

clean:
    rm $(PROG) $(OBJS)
