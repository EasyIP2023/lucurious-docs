<a href="https://easyip2023.github.io/lucurious-docs/" class="button">Main Page</a>

## BRIEF DESCRIPTION

Most **dlu_set**_* functions are just wrappers around Vulkan structures. Thus, can be ignored and not utilized. I added them to limit
the amount of lines of C code one has to write. Whenever the keyword **info** is appended to the end of the function call, that function
is a wrapper around a Vulkan CreateInfo structure. The only **dlu_set** functions that are not wrappers around Vulkan structures are
[dlu_set_debug_message(3)](https://easyip2023.github.io/lucurious-docs/api/vkcomp/dlu_set_debug_message) and
[dlu_set_device_debug_ext(3)](https://easyip2023.github.io/lucurious-docs/api/vkcomp/dlu_set_device_debug_ext)

## AUTHOR
Vincent Davis Jr.