CC		= g++
CFLAGS	= 
PROGS	= sol

all: $(PROGS)

%.o: %.c
	$(CC) -o $< $(CFLAGS)

clean:
	rm -f $(PROGS) *.o
	rm -rf __pycache__