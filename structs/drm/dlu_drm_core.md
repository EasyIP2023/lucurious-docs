<a href="https://easyip2023.github.io/lucurious-docs/" class="button">Main Page</a>

## BRIEF DESCRIPTION

**dlu_drm_core** - a structure that allows for easy and better tracking of handles to low-level graphics API objects.

## C SPECIFICATION

```c
#define LUCUR_DRM_API
#include <dluc/lucurious.h>

typedef struct _dlu_drm_core {
  struct _device {
    /* KMS API Device node */
    uint32_t kmsfd;

    uint32_t vtfd; /* Virtual Terminal File Descriptor */
    uint32_t bkbm; /* Backup Keyboard mode */

    /* A GBM device is used to create gbm_bo (it's a buffer allocator) */
    struct gbm_device *gbm_device;

    /**
    * Output Data struct contains information of a given
    * Plane, CRTC, Encoder, Connector pair
    */
    uint32_t odc; /* Output data count */
    struct _output_data {
      uint32_t modifiers_cnt;
      uint32_t *modifiers;

      /* connector name */
      char name[32];

      uint32_t mode_blob_id;
      drmModeModeInfo mode;
      uint64_t refresh; /* Refresh rate for a pair store in nanoseconds */

      uint32_t pp_id;   /* Primary Plane ID */
      uint32_t crtc_id; /* CTRC ID */
      uint32_t conn_id; /* Connector ID */
      uint32_t enc_id;  /* Keeping encoder ID just because */

      /**
      * The plane -> CRTC -> Encoder -> connector chain construct
      */
      drmModePlane *plane;
      drmModeCrtc *crtc;
      drmModeEncoder *enc;
      drmModeConnector *conn;

      struct {
        struct drm_prop_info plane[DLU_DRM_PLANE__CNT];
        struct drm_prop_info crtc[DLU_DRM_CRTC__CNT];
        struct drm_prop_info conn[DLU_DRM_CONNECTOR__CNT];
      } props;
    } *output_data;
  } device;

  struct _logind {
    /* For open D-Bus connection */
    sd_bus *bus;

    /* Session id and path */
    char *id, *path;

    bool has_drm;
  } session;

  struct _input {
    uint32_t inpfd;
    struct udev *udev;
    struct libinput *inp;
  } input;
} dlu_drm_core;
```

## MEMBERS

...

## DESCRIPTION

...

## SEE ALSO

[dlu_drm_init_core(3)](https://easyip2023.github.io/lucurious-docs/api/drm/dlu_drm_init_core)
[dlu_drm_freeup_core(3)](https://easyip2023.github.io/lucurious-docs/api/drm/dlu_drm_freeup_core)

## Author

Vincent Davis Jr.