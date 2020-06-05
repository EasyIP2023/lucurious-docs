
<a href="https://easyip2023.github.io/lucurious-docs/" class="button">Main Page</a>

## BRIEF DESCRIPTION

wlu_init_vk - This will return a pointer a vkcomp struct

## SYNOPSIS

**#define** LUCUR_VKCOMP_API

**#include** <dluc/lucurious.h>

vkcomp **dlu_init_vk(vkcomp** *app)

## DESCRIPTION

This function returns a pointer to a vkcomp (vulkan compositor) structure whose members are
viewable here [vkcomp](https://easyip2023.github.io/lucurious-docs/structs/vkcomp).

## EXAMPLE

**Program source**

```c
#define LUCUR_VKCOMP_API
#include> <dluc/lucurious.h>

int main() {
  vkcomp *app = dlu_init_vk();

  dlu_freeup_vk(app);

  return 0;
}
```

## SEE ALSO

dlu_freeup_vk(3)

## Author
Vincent Davis Jr.