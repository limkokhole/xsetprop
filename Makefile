### Makefile --- 

## Author: Bad_ptr

all: xsetprop
	@echo "[DONE]"

xsetprop: xsetprop.c
	@echo "$(CC) $^ => $@"
	$(CC) $^ -o $@ `pkg-config --libs --cflags x11 xmu` $(CFLAGS)


.PHONY: clean rebuild install uninstall

clean:
	@echo "rm xsetprop"
	@rm "xsetprop"

rebuild: clean all

install: all
	@echo "Installing xsetprop to /usr/local/bin"
	install -c -b -s xsetprop /usr/local/bin

uninstall:
	@echo "Removing /usr/local/bin/xsetprop"
	rm /usr/local/bin/xsetprop


### Makefile ends here
