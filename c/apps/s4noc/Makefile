MAIN?=hello_s4noc

all:
	patmos-clang -O2 $(MAIN).c -I ../.. -I ../../include ../../libcorethread/*.c -o s4noc.elf

clean:
	rm *.elf

test-bubble:
	cd ../../../hardware; sbt "runMain s4noc.FifoTester"

test:
	cd ../../../hardware; sbt "test:runMain s4noc.S4nocTester"

test-all:
	cd ../../../hardware; sbt "test:runMain s4noc.ScheduleTester"
	cd ../../../hardware; sbt "test:runMain s4noc.RouterTester"
	cd ../../../hardware; sbt "test:runMain s4noc.NetworkTester"
	cd ../../../hardware; sbt "test:runMain s4noc.NetworkCompare"
