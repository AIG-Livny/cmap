TARGET			=	bin/test
SOURCES			=	test.c
OBJ_PATH		?=  obj
CC				?=  gcc
CFLAGS			?=	-O0 -g -DDEBUG

INCLUDE_DIRS    += ../src
LDFLAGS = -L../src
LDLIBS = -lcmap

###

OBJECTS=$(SOURCES:%.c=$(OBJ_PATH)/%.o)
DEPS=$(OBJECTS:.o=.d)
DEPFLAGS=-MMD -MP

CFLAGS += $(addprefix -I, $(INCLUDE_DIRS))

.PHONY: all clean cleanall test

all: $(TARGET)

clean:
	rm -rf $(OBJ_PATH)

cleanall: clean
	rm -rf bin

test: all
	$(TARGET)

$(TARGET): $(OBJECTS)
	mkdir -p $(dir $(TARGET))
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@ $(LDLIBS)


$(OBJ_PATH)/%.o: %.c Makefile
	mkdir -p $(dir $@)
	$(CC) $(DEPFLAGS) $(CFLAGS) -c $< -o $@

-include $(DEPS)
