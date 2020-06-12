<a href="https://easyip2023.github.io/lucurious-docs/" class="button">Main Page</a>

## BRIEF DESCRIPTION

dlu_otma - a function that allows for allocation of a very large block of type private or shared once.

## C SPECIFICATION

```c
bool dlu_otma(
  dlu_block_type type,
  dlu_otma_mems ma
);
```

## MEMBERS

* **type**: Specifies the type of block to allocate. See [dlu_block_type(3)](https://easyip2023.github.io/lucurious-docs/enums/utils/dlu_block_type) for more details.
* **ma**: Structure that helps specify the exact amount bytes to allocate. See [dlu_otma_mems(3)](https://easyip2023.github.io/lucurious-docs/structs/utils/dlu_otma_mems)
for more details.

## DESCRIPTION

OTMA stands for one time memory allocation. It's one technique employed in lucurious to limit the amount of context switches to the kernel process
by simply allocating space once. Pages are then assigned to lucurious structure members which are mainly just handles to objects that the lower level 
APIs handle for you.

## RETURN VALUES

Upon failure otma returns false.

## BUGS

N/A.

## SEE ALSO

[dlu_otba(3)](https://easyip2023.github.io/lucurious-docs/api/utils/dlu_otba)
[dlu_release_blocks(3)](https://easyip2023.github.io/lucurious-docs/api/utils/dlu_release_blocks)
[dlu_otma_mems(3)](https://easyip2023.github.io/lucurious-docs/structs/utils/dlu_otma_mems)
[dlu_block_type(3)](https://easyip2023.github.io/lucurious-docs/enums/utils/dlu_block_type)

## AUTHOR

Vincent Davis Jr.