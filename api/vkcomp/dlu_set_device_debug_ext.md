<a href="https://easyip2023.github.io/lucurious-docs/" class="button">Main Page</a>

## BRIEF DESCRIPTION

**dlu_set_device_debug_ext** - allows API to assign functions to function pointers used in the debugging process. 

## C Specification

```c
#define LUCUR_VKCOMP_API
#include <dluc/lucurious.h>

VkResult dlu_set_device_debug_ext(
  vkcomp *app,
  uint32_t cur_ld
);
```

## MEMBERS

* **app**: A pointer to the [vkcomp](https://easyip2023.github.io/lucurious-docs/structs/vkcomp/vkcomp) structure.
* **cur_ld**: Must pass the index of the current VkDevice (Logical Device). Preallocate devices with the use of [dlu_otba(3)](https://easyip2023.github.io/lucurious-docs/api/utils/dlu_otba).

## DESCRIPTION

When using this function you must make a call to [dlu_create_logical_device(3)](https://easyip2023.github.io/lucurious-docs/structs/vkcomp/dlu_create_logical_device).
The **dlu_set_device_debug_ext(3)** function basically associates a Vk*DebugUtilsLabelEXT function with a function pointer. Allowing for better debugging of Vulkan
application.

## RETURN VALUES

Upon success or failure function returns one of Vulkans [VkResult](https://www.khronos.org/registry/vulkan/specs/1.1-extensions/man/html/VkResult.html)
enum constants. These result codes are used to indicate return status information and runtime errors.

## BUGS

N/A.

## SEE ALSO

[vkcomp(3)](https://easyip2023.github.io/lucurious-docs/structs/vkcomp/vkcomp)
[lucur(1)](https://easyip2023.github.io/lucurious-docs/cmd/lucur)

## AUTHOR

Vincent Davis Jr.