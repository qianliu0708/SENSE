CC = gcc
#Using -Ofast instead of -O3 might result in faster code, but is supported only by newer GCC versions
CFLAGS = -lm -pthread -O3 -Wall -funroll-loops -Wno-unused-result

word2vec : word2vec.c
	$(CC) word2vec.c -o sense $(CFLAGS)

clean:
	rm -rf word2vec word2phrase distance word-analogy compute-accuracy
