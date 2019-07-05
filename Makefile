
all:
	pod2man wlu_vkall.h.pod > build/wlu_vkall.h.3

clean:
	$(RM) build/*
