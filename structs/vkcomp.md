<a href="https://easyip2023.github.io/lucurious-docs/" class="button">Main Page</a>

## BRIEF DESCRIPTION

vkcomp - a structure that allows for easy and better tracking of vulkan handles to objects that vulkan manipulates for you.

## SYNOPSIS

**#define** LUCUR_VKCOMP_API
**#include** <dluc/lucurious.h>

```c
typedef struct _vkcomp {
  PFN_vkDestroyDebugReportCallbackEXT dbg_destroy_report_callback;
  VkDebugReportCallbackEXT debug_report_callback;

  VkInstance instance;
  VkSurfaceKHR surface;

  VkPhysicalDevice physical_device;
  VkDevice device; /* logical device */
  struct _queue_family_indices {
    uint32_t graphics_family;
    uint32_t present_family;
  } indices;

  VkQueue graphics_queue;
  VkQueue present_queue;

  uint32_t sdc; /* swap chain data count */
  struct _sc_data {
    uint32_t sic; /* swap chain image count */
    VkSwapchainKHR swap_chain;
    struct _swap_chain_buffers {
      VkImage image;
      VkImageView view;
      VkFramebuffer fb;
    } *sc_buffs;

    /**
    * VkFence image: Used to have a sync object to wait on before a new frame can use that image
    * VkFence render: Used to signal that a frame has finished rendering
    * VkSemaphore image: Signal that a swapchaine image has been acquire
    * VkSemaphore render: Signal that an swapchain image is ready for & done rendering
    */
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
    uint32_t gpc; /* graphics piplines count */
    VkPipeline *graphics_pipelines;
  } *gp_data;

  uint32_t cdc; /* command data count */
  struct _cmd_data {
    VkCommandPool cmd_pool;
    VkCommandBuffer *cmd_buffs;
  } *cmd_data;

  uint32_t bdc; /* buffer data count */
  struct _buff_data {
    VkBuffer buff;
    VkDeviceMemory mem;
    VkDeviceSize size;
    char name;
  } *buff_data;

  uint32_t ddc; /* descriptor data count */
  struct _desc_data {
    VkDescriptorPool desc_pool;
    uint32_t dlsc; /* descriptor layout/set count */
    VkDescriptorSetLayout *layouts;
    VkDescriptorSet *desc_set;
  } *desc_data;
  
  uint32_t tdc; /* texture data count */
  struct _text_data {
    VkImage image;
    VkImageView view;
    VkDeviceMemory mem;
    VkSampler sampler;
  } *text_data;

  uint32_t dpc; /* Display Data Count = VkDisplayProps Count */
  struct _dis_data {
    VkDisplayPropertiesKHR props;
  } *dis_data;
} vkcomp;
```

## DESCRIPTION

Adding information about each struct

## AUTHOR

Vincent Davis Jr.

## SEE ALSO

**dlu_init_vk(3) dlu_set_global_layers(3) dlu_create_instance(3) dlu_enumerate_devices(3)
dlu_set_logical_device(3) dlu_vkconnect_surfaceKHR(3) dlu_q_device_capabilities(3)
dlu_choose_swap_surface_format(3) dlu_choose_swap_present_mode(3) dlu_choose_swap_extent(3)
dlu_create_swap_chain(3) dlu_create_img_views(3) dlu_create_gp(3) dlu_freeup_vk(3)**
