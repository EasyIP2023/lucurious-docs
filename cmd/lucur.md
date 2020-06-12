<a href="https://easyip2023.github.io/lucurious-docs/" class="button">Main Page</a>

## BRIEF DESCRIPTION

lucur - liblucurious command line tool

## SYNOPSIS
**lucur** [options]

**lucur** --pde VK_QUEUE_GRAPHICS_BIT

## DESCRIPTION

The **lucur** command line tool is used to assist in the construction of single application vulkan kms compositors

## OPTIONS

**-l, &mdash;&mdash;pgvl**

Prints a list of all validation layers installed on the system that can be activated. All useful validation layers are
bundled up into a layer called **VK_LAYER_KHRONOS_validation**. Vulkan validation layers are useful to enable when debugging
your code as it gives you a detailed output on what you did wrong. The ouput is mostly Vulkan Structure members whose data input were wrong
**(validity errors)**. There are also **runtime errors**. When these layers are enabled, it places itself within the repective vulkan functions
call chain and will detail any errors caused by wrongful practices.

**-i, &mdash;&mdash;pie**

Prints a list of all instance level vulkan external extensions for a given system that can be activated. Basically instance extensions
allow developers to describe how a device is setup. It also enables the ability to utilize activated extension related vulkan function calls.
**NOTE: VK_EXT_debug_utils extension is both a combination of VK_EXT_debug_report and VK_EXT_debug_marker extensions.**

**-d, &mdash;&mdash;pde** [VkPhysicalDeviceType](https://www.khronos.org/registry/vulkan/specs/1.2-extensions/man/html/VkPhysicalDeviceType.html)

Prints a list of all physical device level vulkan external extensions for a given system that can be activated. Basically device extensions
allow developers to describe what a particular device does. It also enables the ability to utilize activated extension related vulkan function calls.

&nbsp;&nbsp;&nbsp;&nbsp;**&mdash;&mdash;pdp** [VkPhysicalDeviceType](https://www.khronos.org/registry/vulkan/specs/1.2-extensions/man/html/VkPhysicalDeviceType.html)

Print display devices list

&nbsp;&nbsp;&nbsp;&nbsp;**&mdash;&mdash;display-info** `<drm device>`

This will display any compatible (DRM Device/KMS Node) and it's capabilities. Mainly used to limit allocations and instruction
execution when calling [dlu_drm_kms_node_enum_ouput_dev(3)](https://easyip2023.github.io/lucurious-docs/api/drm/dlu_drm_kms_node_enum_ouput_dev). If no
preferred DRM device available cycle through all of them and display Plane -> CTRC -> Encoder -> Connector pairs. The argument for this flag is optional

**-v, &mdash;&mdash;version**

Prints the current version of lucurious API

**-h, &mdash;&mdash;help**

Show help message.

## BUGS
When using the **&mdash;&mdash;display-info** flag one must add include **=** if they want to specify the device they wish to query information from.
I decided on making the option to choose which kms node you want to query information for optional.

## AUTHOR
Vincent Davis Jr.
