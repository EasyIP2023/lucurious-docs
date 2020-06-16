<a href="https://easyip2023.github.io/lucurious-docs/" class="button">Main Page</a>

## BRIEF DESCRIPTION

**wlu_init_vk** - This will return a pointer a vkcomp struct

## C SPECIFICATION

```c
#define LUCUR_VKCOMP_API
#include> <dluc/lucurious.h>

vkcomp *dlu_init_vk();
```

## MEMBERS

N/A.

## DESCRIPTION

This function returns a pointer of type [vkcomp](https://easyip2023.github.io/lucurious-docs/structs/vkcomp/vkcomp) (vulkan compositor) structure.

## RETURN VALUES

Upon failure dlu_init_vk returns **NULL**. Upon success an address to the starting member of the vkcomp structure.

## BUGS

N/A.

## SEE ALSO

[vkcomp(3)](https://easyip2023.github.io/lucurious-docs/structs/vkcomp/vkcomp)
[dlu_freeup_vk(3)](https://easyip2023.github.io/lucurious-docs/api/vkcomp/dlu_freeup_vk)

## AUTHOR

Vincent Davis Jr.