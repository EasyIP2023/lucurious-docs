# Lucurious Docs
Lucurious is largely documented through comments in the code and man pages. When documenting please ensure that the file name starts with label wlu_*.

**To generate single man page file by hand**

```bash
mkdir -v build
pod2man <filename>.pod > build/<filename>.<man page #>
groff -Tascii -man build/wlu_*
# OR!!!!
man ./build/wlu_*
```

**To Generate multiple man pages**
```bash
mkdir -v build
make
groff -Tascii -man build/wlu_*
# OR!!!!
man ./build/wlu_*
```

I plan on leaving this particular make file as simple as possible.

### References
* [Perl Documentation Format](http://linuxfocus.org/English/November2003/article309.shtml)
