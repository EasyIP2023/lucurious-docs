<a href="https://easyip2023.github.io/lucurious-docs/" class="button">Main Page</a>

## BRIEF DESCRIPTION

dlu_block_type - an enum to specify a type of block of memory.

## C SPECIFICATION

```c
typedef enum _dlu_block_type {
  DLU_LARGE_BLOCK_PRIV = 0x0000,
  DLU_SMALL_BLOCK_PRIV = 0x0001,
  DLU_LARGE_BLOCK_SHARED = 0x0002,
  DLU_SMALL_BLOCK_SHARED = 0x0004
} dlu_block_type;
```

## MEMBERS

* **DLU_LARGE_BLOCK_PRIV**: Enum value for specifying a large private block of memory.
* **DLU_SMALL_BLOCK_PRIV**: Enum value for specifying a small private block of memory. This value is be passed when [dlu_otba(3)](https://easyip2023.github.io/lucurious-docs/api/utils/dlu_otba)
sub allocates blocks of memory.
* **DLU_LARGE_BLOCK_SHARED**: Enum value for specifying a large shared block of memory. **Currently not in use**
* **DLU_SMALL_BLOCK_SHARED**: Enum value for specifying a small shared block of memory. This value is be passed when [dlu_otba(3)](https://easyip2023.github.io/lucurious-docs/api/utils/dlu_otba)
sub allocates blocks of memory. **Currently not in use**

## DESCRIPTION

This enum allows for specifying the exact type of memory to initially allocate and sub allocate from that initial allocation.

## SEE ALSO

[dlu_otma(3)](https://easyip2023.github.io/lucurious-docs/api/utils/dlu_otma)
[dlu_otba(3)](https://easyip2023.github.io/lucurious-docs/api/utils/dlu_otba)

## AUTHOR

Vincent Davis Jr.
