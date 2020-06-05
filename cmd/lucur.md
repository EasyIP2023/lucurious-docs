<a href="https://easyip2023.github.io/lucurious-docs/" class="button">Main Page</a>

## BRIEF DESCRIPTION

lucur - liblucurious command line tool

## SYNOPSIS
**lucur** [options]

**lucur** --pde VK_QUEUE_GRAPHICS_BIT

## DESCRIPTION

The **lucur** command line tool is used to assist in the construction of single application vulkan kms compositors

## OPTIONS

**-l, `--`pgvl**

&nbsp;&nbsp;&nbsp;&nbsp;Prints a list of all validation layers installed on the system. All useful validation layers are
bundled up into a layer called **VK_LAYER_KHRONOS_validation**. Vulkan validation layers are useful to enable when debugging
your code as it gives you a detailed output on what you did wrong. The ouput is mostly Vulkan Structure members whose data input were wrong.
These layers are automatically enabled by the repective vulkan functions and will detail any errors caused by wrongful practices.

**-i, `--`pie**

&nbsp;&nbsp;&nbsp;&nbsp;Prints a list of all instance level vulkan external extensions for a given systems. Basically instance extensions
allow developers to describe how a device is setup. It also enables to ability to utilize extension related vulkan function calls.

**-d, `--`pde** `<VkPhysicalDeviceType>`

&nbsp;&nbsp;&nbsp;&nbsp;Prints a list of all physical device level vulkan external extensions for a given system. Basically device extensions
allow developers to describe what a particular device does. It also enables to ability to utilize extension related vulkan function calls.

**`--`pdp** `<VkPhysicalDeviceType>`
&nbsp;&nbsp;&nbsp;&nbsp;Print display devices list

**`--`display-info** `<drm device>`

&nbsp;&nbsp;&nbsp;&nbsp;This will display any compatible (DRM Device/KMS Node) and it's capabilities. Mainly used to limit allocations and instruction
execution when calling **[dlu_drm_kms_node_enum_ouput_dev(3)](https://easyip2023.github.io/lucurious-docs/api/dlu_drm_kms_node_enum_ouput_dev)**. If no
preferred DRM device available cycle through all of them and display Plane -> CTRC -> Encoder -> Connector pairs. The argument for this flag is optional

**-v, `--`version**

&nbsp;&nbsp;&nbsp;&nbsp;Prints the current version of lucurious API

**-h, `--`help**

&nbsp;&nbsp;&nbsp;&nbsp;Show help message.

## Bugs
When using the **`--`display-info** flag one must add include "=/dev/dri/card0". I decided on making the option to choose which kms node you want to
query information for optional.

## Author
Vincent Davis Jr.
