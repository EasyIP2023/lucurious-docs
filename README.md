# Lucurious Docs

To Generate man page file by hand

```bash
mkdir -v build
pod2man <filename>.pod > build/<filename>.<man page #>
man ./build/wlu_*
```

To Generate multiple man pages. I plan on leaving this particular make file as simple as possible.
```bash
mkdir -v build
make
man ./build/wlu_*
```

### References
* [Perl Documentation Format](http://linuxfocus.org/English/November2003/article309.shtml)
