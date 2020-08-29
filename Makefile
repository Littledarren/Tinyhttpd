all: httpd client
LIBS = -lpthread 
#-lsocket
httpd: httpd.c
	gcc -g  -Wall  -o $@ $< $(LIBS)

client: simpleclient.c
	gcc -W -Wall -o $@ $<
clean:
	rm httpd
