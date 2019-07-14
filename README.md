# Lucurious Docs
Lucurious is largely documented through comments in the code and man pages. When documenting please ensure that the file name starts with label wlu_*.

# Installation

```bash
mkdir -v build
meson build
ninja install -C build

# Encase of PolicyKit daemon errors
pkttyagent -p $(echo $$) | pkexec ninja install -C $(pwd)/build/
```

# Usage

```bash
man 7 vkall
```
```bash
man 1 lucur
```
```bash
man 3 wlu_*
```

# Contribution

**To generate single man page file by hand**
```bash
mkdir -v build
pod2man <filename>.pod > build/wlu_<filename>.<man page #>
```
**To Generate multiple man pages**
```bash
mkdir -v build
meson build/
```
**Testing**
```bash
groff -Tascii -man build/wlu_*
# OR!!!!
man ./build/wlu_*
```

### References
* [Perl Documentation Format](http://linuxfocus.org/English/November2003/article309.shtml)
