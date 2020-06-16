<a href="https://easyip2023.github.io/lucurious-docs/" class="button">Main Page</a>

## BRIEF DESCRIPTION

**dlu_create_instance** - a wrapper that creates a VkInstance handle and establish a connection to the Vulkan API

## C SPECIFICATION

```c
#define LUCUR_VKCOMP_API
#include <dluc/lucurious.h>

VkResult dlu_create_instance(
  vkcomp *app,
  char *app_name,
  char *engine_name,
  uint32_t enabledLayerCount,
  const char* const* ppEnabledLayerNames,
  uint32_t enabledExtensionCount,
  const char* const* ppEnabledExtensionNames
);
```

## MEMBERS

* **app**: A pointer to the [vkcomp](https://easyip2023.github.io/lucurious-docs/structs/vkcomp/vkcomp) structure.
* **app_name**: A member of the [VkApplicationInfo](https://www.khronos.org/registry/vulkan/specs/1.2-extensions/man/html/VkApplicationInfo.html)
structure reserved for the name of the application. 
* **engine_name**: A member of the [VkApplicationInfo](https://www.khronos.org/registry/vulkan/specs/1.2-extensions/man/html/VkApplicationInfo.html)
structure reserved for the name of the engine used to create a given application. 
* **enabledLayerCount**: A member of the [VkInstanceCreateInfo](https://www.khronos.org/registry/vulkan/specs/1.2-extensions/man/html/VkInstanceCreateInfo.html) used to pass
the number of Vulkan Validation Layers one wants to enable.
* **ppEnabledLayerNames**: A member of the [VkInstanceCreateInfo](https://www.khronos.org/registry/vulkan/specs/1.2-extensions/man/html/VkInstanceCreateInfo.html) used to pass
the actual Vulkan Validation Layers one wants to enable. See [lucur(1)](https://easyip2023.github.io/lucurious-docs/cmd/lucur) for details of available layers.
* **enabledExtensionCount**: A member of the [VkInstanceCreateInfo](https://www.khronos.org/registry/vulkan/specs/1.2-extensions/man/html/VkInstanceCreateInfo.html) used to pass
the the number of instance extensions one wants to enable. 
* **ppEnabledExtensionNames**: A member of the [VkInstanceCreateInfo](https://www.khronos.org/registry/vulkan/specs/1.2-extensions/man/html/VkInstanceCreateInfo.html) used to pass
the actual Vulkan instance extensions one wants to enable. See [lucur(1)](https://easyip2023.github.io/lucurious-docs/cmd/lucur) for details of instance extensions.

## DESCRIPTION

The **dlu_create_instance(3)** creates a VkInstance handle and establishes a connection to the Vulkan API. It also acts as an easy wrapper
that allows one to define instance extensions. Instance extensions basically allow developers to define what an app is setup to do. So, if I
want the application to work with wayland or X etc... I would enable those extensions inorder to gain access to those particular capabilities.

## RETURN VALUES

Upon success or failure function returns one of Vulkans [VkResult](https://www.khronos.org/registry/vulkan/specs/1.1-extensions/man/html/VkResult.html)
enum constants. These result codes are used to indicate return status information and runtime errors.

## BUGS

N/A.

## SEE ALSO

[vkcomp(3)](https://easyip2023.github.io/lucurious-docs/structs/vkcomp/vkcomp)

## AUTHOR

Vincent Davis Jr.
