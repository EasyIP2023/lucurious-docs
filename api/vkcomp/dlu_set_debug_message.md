<a href="https://easyip2023.github.io/lucurious-docs/" class="button">Main Page</a>

## BRIEF DESCRIPTION

dlu_set_debug_message - allows API to set the output of validation layer messages by exposing a VkDebugReportCallbackEXT handle. 

## C Specification

```c
VkResult dlu_set_debug_message(
  vkcomp *app,
  VkDebugReportFlagBitsEXT flags
);
```

## MEMBERS

* **app**: A pointer to a lucurious structure called [vkcomp(3)](https://easyip2023.github.io/lucurious-docs/structs/vkcomp/vkcomp).
* **flags**: The flag argument basically specifies what type of events to be notified about. See [VkDebugReportFlagBitsEXT](https://khronos.org/registry/vulkan/specs/1.2-extensions/man/html/VkDebugReportFlagBitsEXT.html)
for enum constants.

## DESCRIPTION

When using this function the first query for available layers with [lucur(1)](https://easyip2023.github.io/lucurious-docs/cmd/lucur) command line helper tool. After enable available validation layers with
[dlu_create_instance](https://easyip2023.github.io/lucurious-docs/structs/vkcomp/dlu_create_instance). This function basically just changes the output of validation layer error message.
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