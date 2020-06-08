<a href="https://easyip2023.github.io/lucurious-docs/" class="button">Main Page</a>

## BRIEF DESCRIPTION

dlu_release_blocks - a function that munmap(2) the larger allocated blocks.

## C Specification

```c
void dlu_release_blocks();
```

## Members

N/A

## Description

This function removes the pages of memory created with [dlu_otma(3)](https://easyip2023.github.io/lucurious-docs/api/utils/dlu_otma).
If no blocks where allocated then it simply does nothing.

## RETURN VALUES

No return value.

## Bugs

N/A.

## See Also

[dlu_otma(3)](https://easyip2023.github.io/lucurious-docs/api/utils/dlu_otma)

## AUTHOR

Vincent Davis Jr.