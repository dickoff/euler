.PHONY: clean

clean:
	rm -frv main;

main:
	swiftc ./euler/Source/*.swift ./euler/Source/Problems/*.swift -o $@;
	ls -l $@;
