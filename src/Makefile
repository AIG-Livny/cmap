TARGET			=	libcmap.a
SOURCES			=	cmap.c
OBJ_PATH		?=  obj
CC				?=  gcc
CFLAGS			?=	-O3 -g

INCLUDE_DIRS 	+=  .

###

OBJECTS=$(SOURCES:%.c=$(OBJ_PATH)/%.o)
DEPS=$(OBJECTS:.o=.d)
DEPFLAGS=-MMD -MP

CFLAGS += $(addprefix -I, $(INCLUDE_DIRS))

.PHONY: all clean cleanall test

all: $(TARGET)

clean:
	rm -rf $(LIBS_HEADERS_PATHS) $(OBJ_PATH)

cleanall: clean
	rm -rf $(TARGET)

test: all
	$(TARGET)

$(TARGET): $(OBJECTS)
	$(AR) $(ARFLAGS) $@ $(OBJECTS)

$(OBJ_PATH)/%.o: %.c Makefile
	mkdir -p $(dir $@)
	$(CC) $(DEPFLAGS) $(CFLAGS) -c $< -o $@

-include $(DEPS)
