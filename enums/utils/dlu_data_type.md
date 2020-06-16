<a href="https://easyip2023.github.io/lucurious-docs/" class="button">Main Page</a>

## BRIEF DESCRIPTION

**dlu_data_type** - an enum to specify a which vkcomp structure member one wants to allocate.

## C SPECIFICATION

```c
typedef enum _dlu_data_type {
  DLU_SC_DATA = 0x0000,
  DLU_GP_DATA = 0x0001,
  DLU_CMD_DATA = 0x0002,
  DLU_BUFF_DATA = 0x0003,
  DLU_DESC_DATA = 0x0004,
  DLU_TEXT_DATA = 0x0005,
  DLU_DIS_DATA = 0x0006,
  DLU_PD_DATA = 0x0007,
  DLU_LD_DATA = 0x0008,
  DLU_SC_DATA_MEMS = 0x0F01,
  DLU_DESC_DATA_MEMS = 0x0F02,
  DLU_GP_DATA_MEMS = 0x0F03,
  DLU_DEVICE_OUTPUT_DATA = 0x0F04
} dlu_data_type;
```

## MEMBERS

* **DLU_SC_DATA**: select in vkcomp **(struct _sc_data)**. Important SwapChain Data.
* **DLU_GP_DATA**: select in vkcomp **(struct _gp_data)**. Important Graphics Pipeline Data.
* **DLU_CMD_DATA**: select in vkcomp **(struct _cmd_data)**. Important Command Data. VkCommandPool and vkCommandBuffer.
* **DLU_BUFF_DATA**: select in vkcomp **(struct _buff_data)**. Important Buffer Data when creating a VkBuffer and moving vertex data into it.
* **DLU_DESC_DATA**: select in vkcomp **(struct _desc_data)**. Important Descriptor Data.
* **DLU_TEXT_DATA**: select in vkcomp **(struct _text_data)**:. Important Texture Data.
* **DLU_DIS_DATA**: select in vkcomp **(struct _dis_data)**: Important Display Data. **This is still in progress**.
* **DLU_PD_DATA**: select in vkcomp **(struct _pd_data)**: Important Physical Device Data.
* **DLU_LD_DATA**: select in vkcomp **(struct _ld_data)**: Important Logical Device Data.
* **DLU_SC_DATA_MEMS**: select in vkcomp the members of the **(struct _sc_data)**. Important SwapChain Data members which are pointer to structures themselves or just pointers.
* **DLU_DESC_DATA_MEMS**: select in vkcomp the members of the **(struct _desc_data)**. Important Descriptor Data members which are pointer to structures themselves or just pointers.
* **DLU_GP_DATA_MEMS**: select in vkcomp the members of the **(struct _gp_data)**. Important Graphics Pipeline Data members which are pointer to structures themselves or just pointers.
* **DLU_DEVICE_OUTPUT_DATA**: select in dlu_drm_core **(struct _output_data)**. Important DRM Device Output Data.

## DESCRIPTION

This enums constants must be passed to [dlu_otba(3)](https://easyip2023.github.io/lucurious-docs/api/utils/dlu_otba) this choses which [vkcomp(3)](https://easyip2023.github.io/lucurious-docs/structs/vkcomp/vkcomp)
structure member one want to allocate. You must specify the array size with [dlu_otma_mems(3)](https://easyip2023.github.io/lucurious-docs/structs/utils/dlu_otma_mems). I wrote this becuase early on as I saw that
handles that store references to objects that low-level APIs manipulate could be preallocated and reused.


## BUGS

N/A.

## SEE ALSO

[vkcomp(3)](https://easyip2023.github.io/lucurious-docs/structs/vkcomp/vkcomp)
[dlu_drm_core(3)](https://easyip2023.github.io/lucurious-docs/structs/drm/dlu_drm_core)
[dlu_otma_mems(3)](https://easyip2023.github.io/lucurious-docs/structs/utils/dlu_otma_mems)
[dlu_otba(3)](https://easyip2023.github.io/lucurious-docs/api/utils/dlu_otba)

## AUTHOR

Vincent Davis Jr.
