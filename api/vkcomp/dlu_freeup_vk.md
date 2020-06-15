<a href="https://easyip2023.github.io/lucurious-docs/" class="button">Main Page</a>

## BRIEF DESCRIPTION

**wlu_freeup_vk** - Frees vkcomp memory

## C SPECIFICATION

```c
#define LUCUR_VKCOMP_API
#include <dluc/lucurious.h>

void dlu_freeup_vk(void *data);
```

## MEMBERS

* **data**: Pointer should be a member

## DESCRIPTION

The **wlu_freeup_vk(3)** function free's up any memory if allocate that belongs to the vkcomp
pointer variable viewable in [vkcomp](https://easyip2023.github.io/lucurious-docs/structs/vkcomp/vkcomp).
Most memory free'd here are cached vulkan handles.

## RETURN VALUES

N/A.

## BUGS

N/A.

## SEE ALSO

[dlu_init_vk(3)](https://easyip2023.github.io/lucurious-docs/api/vkcomp/dlu_init_vk)

## AUTHOR

Vincent Davis Jr.
