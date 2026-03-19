TARGET=src/libcmap.a
TARGET_TEST=test/bin/test

all: $(TARGET)

test: $(TARGET) $(TARGET_TEST)
	$(TARGET_TEST)

clean:
	$(MAKE) -C src clean
	$(MAKE) -C test clean

cleanall:
	$(MAKE) -C src cleanall
	$(MAKE) -C test cleanall

$(TARGET):
	$(MAKE) -C src

$(TARGET_TEST):
	$(MAKE) -C test
