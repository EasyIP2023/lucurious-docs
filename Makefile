
all: create_man seds_common

create_man:
	bash file_convert.sh

seds_common:
	sed -i 's/User Contributed Perl Documentation/Lucurious Api Documentation/g' build/*
	sed -i 's/perl v5.30.0/Lucurious Labs Docs/g' build/*

clean:
	$(RM) build/*
