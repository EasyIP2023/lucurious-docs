<a href="https://easyip2023.github.io/lucurious-docs/" class="button">Main Page</a>

## BRIEF DESCRIPTION

**dlu_set_debug_message** - allows API to set the output of validation layer messages by exposing a VkDebugUtilsMessengerEXT handle. 

## C Specification

```c
#define LUCUR_VKCOMP_API
#include <dluc/lucurious.h>

VkResult dlu_set_debug_message(
  vkcomp *app,
  int flags,
  VkDebugUtilsMessageSeverityFlagsEXT messageSeverity,
  VkDebugUtilsMessageTypeFlagsEXT messageType
);
```

## MEMBERS

* **app**: A pointer to a lucurious structure called [vkcomp(3)](https://easyip2023.github.io/lucurious-docs/structs/vkcomp/vkcomp).
* **flags**: Must be 0.
* **messageSeverity**: Basically specify how a given callback message is outputed. See [VkDebugUtilsMessageSeverityFlagsEXT](https://khronos.org/registry/vulkan/specs/1.2-extensions/man/html/VkDebugUtilsMessageSeverityFlagBitsEXT.html)
for enum constants.
* **messageType**: Basically specify which types of messages a callback is notified about. See [VkDebugUtilsMessageTypeFlagBitsEXT](https://khronos.org/registry/vulkan/specs/1.2-extensions/man/html/VkDebugUtilsMessageTypeFlagBitsEXT.html)
for enum constants.

## DESCRIPTION

When using this function, first query for available layers with [lucur(1)](https://easyip2023.github.io/lucurious-docs/cmd/lucur) command line helper tool. After enable available validation layers with
[dlu_create_instance(3)](https://easyip2023.github.io/lucurious-docs/structs/vkcomp/dlu_create_instance). The **dlu_set_debug_message(3)** function basically just changes the output of validation layer error message.
Like to make a note that not all validation layer messages are a result of fatal errors.

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