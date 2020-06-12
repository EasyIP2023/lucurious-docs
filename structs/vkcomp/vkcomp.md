<a href="https://easyip2023.github.io/lucurious-docs/" class="button">Main Page</a>

## BRIEF DESCRIPTION

vkcomp - a structure that allows for easy and better tracking of vulkan handles to objects that vulkan manipulates for you.

## C SPECIFICATION

```c
**#define** LUCUR_VKCOMP_API
**#include** <dluc/lucurious.h>

typedef struct _vkcomp {
  PFN_vkDestroyDebugReportCallbackEXT dbg_destroy_report_callback;
  VkDebugReportCallbackEXT debug_report_callback;

  VkInstance instance;
  VkSurfaceKHR surface;

  VkPhysicalDevice physical_device;
  VkDevice device;
  struct _queue_family_indices {
    uint32_t graphics_family;
    uint32_t present_family;
  } indices;

  VkQueue graphics_queue;
  VkQueue present_queue;

  uint32_t sdc;
  struct _sc_data {
    uint32_t sic;
    VkSwapchainKHR swap_chain;
    struct _swap_chain_buffers {
      VkImage image;
      VkImageView view;
      VkFramebuffer fb;
    } *sc_buffs;

    struct _synchronizers {
      struct {
        VkFence image;
        VkFence render;
      } fence;

      struct {
        VkSemaphore image;
        VkSemaphore render;
      } sem;
    } *syncs;

    struct _depth_buffer {
      VkImage image;
      VkImageView view;
      VkDeviceMemory mem;
    } depth;
  } *sc_data;

  uint32_t gdc;
  VkPipelineCache pipeline_cache;
  struct _gp_data {
    VkRenderPass render_pass;
    VkPipelineLayout pipeline_layout;
    uint32_t gpc;
    VkPipeline *graphics_pipelines;
  } *gp_data;

  uint32_t cdc;
  struct _cmd_data {
    VkCommandPool cmd_pool;
    VkCommandBuffer *cmd_buffs;
  } *cmd_data;

  uint32_t bdc;
  struct _buff_data {
    VkBuffer buff;
    VkDeviceMemory mem;
    VkDeviceSize size;
    char name;
  } *buff_data;

  uint32_t ddc;
  struct _desc_data {
    VkDescriptorPool desc_pool;
    uint32_t dlsc;
    VkDescriptorSetLayout *layouts;
    VkDescriptorSet *desc_set;
  } *desc_data;
  
  uint32_t tdc;
  struct _text_data {
    VkImage image;
    VkImageView view;
    VkDeviceMemory mem;
    VkSampler sampler;
  } *text_data;

  uint32_t dpc;
  struct _dis_data {
    VkDisplayPropertiesKHR props;
  } *dis_data;
} vkcomp;
```

## MEMBERS

* **dbg_destroy_report_callback**: a handle used in the destruction of an exposed VkDebugReportCallbackEXT handle. 
* **debug_report_callback**: an exposed VkDebugReportCallbackEXT handle that allows for lucurious API to change validation layer output.

## DESCRIPTION

N/A.

## SEE ALSO

[dlu_init_vk(3)](https://easyip2023.github.io/lucurious-docs/api/vkcomp/dlu_init_vk)
[dlu_freeup_vk(3)](https://easyip2023.github.io/lucurious-docs/api/vkcomp/dlu_freeup_vk)
[dlu_set_debug_message(3)](https://easyip2023.github.io/lucurious-docs/api/vkcomp/dlu_set_debug_message)

## Author

Vincent Davis Jr.