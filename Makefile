
all: create_man seds

create_man:
	pod2man pods/wlu_vkall.h.pod > build/wlu_vkall.h.3

seds:
	sed -i 's/User Contributed Perl Documentation/Lucurious Api Documentation/g' build/*
	sed -i 's/perl v5.30.0/lucurious api 1.0.0/g' build/*

clean:
	$(RM) build/*
