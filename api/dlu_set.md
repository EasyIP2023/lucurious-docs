<a href="https://easyip2023.github.io/lucurious-docs/" class="button">Main Page</a>

## BRIEF DESCRIPTION

Most **dlu_set**_* functions are just wrappers around vulkan structures. Thus, can be ignored and not utilized. I added them to limit
the amount of lines of C code one has to write. Whenever the keyword **info** is appended to the end of the function call, that function
is a wrapper around a Vulkan CreateInfo Structure. The only **dlu_set**_ function that isn't a wrapper is
[dlu_set_debug_message(3)](https://easyip2023.github.io/lucurious-docs/api/vkcomp/dlu_set_debug_message)

## Author
Vincent Davis Jr.