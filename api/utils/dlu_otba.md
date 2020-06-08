<a href="https://easyip2023.github.io/lucurious-docs/" class="button">Main Page</a>

## BRIEF DESCRIPTION

dlu_otba - a function that allows for sub allocating blocks of memory from a larger block of memory.

## C Specification

```c
bool dlu_otba(
  dlu_data_type type,
  void *addr,
  uint32_t index,
  uint32_t arr_size
);
```

## Members

* **type**: Specifies the type of block to allocate. See [dlu_block_type](https://easyip2023.github.io/lucurious-docs/enums/utils/dlu_block_type) for more details
* **addr**: Addresses passed here should be the starting address of the [vkcomp](https://easyip2023.github.io/lucurious-docs/structs/vkcomp/vkcomp) and
[dlu_drm_core](https://easyip2023.github.io/lucurious-docs/structs/drm/dlu_drm_core) structures.
* **index**: Specifies the index of a particular buffer. To allocate space for the members inside said buffer. These buffers are mainly structures whose
members are generally handles.
* **arr_size**: Specifies the amount of element you wish to allocate for a particular buffer. These elements are multiplied by there corresponding data types.

## Description

OTBA stands for one time buffer allocation. It's a technique empolyed by lucurious originally as a way to remove the use of **realloc(3)** later it became
the default standard in lucurious to preallocate blocks of memory that come from a larger block of memory and reuse pages. These pages once again are
then assigned to lucurious structure members which are mainly just handles to objects that the lower level APIs handle for you.

## RETURN VALUES

Upon failure otba returns false.

## Bugs

You have to currently over allocate in order to assign all addresses.

## See Also

[dlu_otma](https://easyip2023.github.io/lucurious-docs/api/utils/dlu_otma)
[vkcomp](https://easyip2023.github.io/lucurious-docs/structs/vkcomp/vkcomp)
[dlu_drm_core](https://easyip2023.github.io/lucurious-docs/structs/drm/dlu_drm_core)

## AUTHOR

Vincent Davis Jr.