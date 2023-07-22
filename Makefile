default: boot.cow
	./compile.sh boot
	./assemble.sh boot

run: boot.bin
	./run.sh boot
