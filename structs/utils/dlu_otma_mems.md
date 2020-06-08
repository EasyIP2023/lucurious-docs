<a href="https://easyip2023.github.io/lucurious-docs/" class="button">Main Page</a>

## BRIEF DESCRIPTION

dlu_otma_mems - a structure for defining byte allocation.

## C Specification

```c
typedef struct _dlu_otma_mems {
  uint32_t inta_cnt;
  uint32_t cha_cnt;
  uint32_t fla_cnt;
  uint32_t dba_cnt;
  uint32_t vkcomp_cnt;
  uint32_t vkext_props_cnt;
  uint32_t vkval_layer_cnt;
  uint32_t desc_cnt;
  uint32_t gp_cnt;
  uint32_t si_cnt;
  uint32_t scd_cnt;
  uint32_t gpd_cnt;
  uint32_t cmdd_cnt;
  uint32_t bd_cnt;
  uint32_t dd_cnt;
  uint32_t td_cnt;
  uint32_t dis_cnt;
  uint32_t drmc_cnt;
  uint32_t dod_cnt;
} dlu_otma_mems;
```

## Members

* **inta_cnt**: Integer array count. Specifies the amount of bytes of type integer to preallocate.
* **cha_cnt**: Character arrays count. Specifies the amount of character arrays one wants to allocate.
* **fla_cnt**: Float array count. Specifies the amount of bytes of type float to preallocate.
* **dba_cnt**: Double array count. Specifies the amount of bytes of type double to preallocate.
* **vkcomp_cnt**: Vulkan compositor structure count. Specifies the amount bytes of type vkcomp to preallocate. This will most likely always be one.
* **vkext_props_cnt**: Vulkan extension properties count. Specifies the amount of bytes need to allocate for vulkan handle VkExtensionProperties.
* **desc_cnt**: Descriptor count. Specifies the amount of bytes need to preallocating vulkan handles VkDescriptorSet and VkDescriptorSetLayout.
* **gp_cnt**: Graphics pipelines count. Specifies the amount of VkPipeline handles one wants to allocate per (**struct _gp_data**).
* **si_cnt**: Swap chain image count. Specifies the the exact amount of VkImage, VkImageView, VkFramebuffer, VkFence, VkSemaphore handles to preallocate.
* **scd_cnt**: Swap chain data count. Specifies the amount of (**struct _sc_data**) bytes needed with respective information to allocate. So if only one swap 
chain with respective data is needed during program execution only allocate one. 
* **gpd_cnt**: Graphics pipeline data count. Specifies the amount of (**struct _gp_data**) bytes needed with respective information to allocate. The structure
contains VkRenderPass, VkPipelineLayout, VkPipeline handles to allocate.
* **cmdd_cnt**: Command data count. Specifies the amount of (**struct _cmd_data**) bytes needed with respective information to allocate. The structure contains 
VkCommandPool and VkCommandBuffer handles to allocate. 
* **bd_cnd**: Buffer data count. Specifies the amount of (**struct _buff_data**) bytes needed with respective information to allocate. The structure contains 
VkBuffer, VkDeviceMemory, VkDeviceSize handles to allocate.
* **dd_cnt**: Descriptor Data count. Specifies the amount of (**struct _desc_data**) bytes needed with respective information to allocate. The structure contains 
VkDescriptorPool, VkDescriptorSetLayout, VkDescriptorSet handles to allocate.
* **td_cnt**: Texture data count. Specifies the amount of (**struct _text_data**) bytes needed with respective information to allocate. The structure contains 
VkImage, VkImageView, VkDeviceMemory, VkSampler handles to allocate.
* **dis_cnt**: Display data count. More information later
* **drmc_cnt**: dlu_drm_core structure count. Specifies the amount of (**dlu_drm_core**) bytes needed. This will most likely always be one.
* **dod_cnt**: Device output_data struct count. Specifies the amount of (**struct _output_data**) bytes needed. Integer should be equal to the number of 
Plane -> CRTC -> Encoder -> Connector pairs found when running the command **lucur &mdash;&mdash;display-info=/dev/dri/card0**.

## Description

This structure allows for defining the exact amount of heap segment bytes needed throughout program execution. This is mainly
for preallocation of reusable lucurious struct member handles, but may evolve as I continue to work on lucurious.
Most if not all information needed for preallocation can be acquired by running **vulkaninfo** (apart of the vulkan-tools package) or **lucur(1)**
(apart of the lucurious package).

## See Also

[dlu_otma(3)](https://easyip2023.github.io/lucurious-docs/api/utils/dlu_otma)
[dlu_otba(3)](https://easyip2023.github.io/lucurious-docs/api/utils/dlu_otba)

## AUTHOR

Vincent Davis Jr.
