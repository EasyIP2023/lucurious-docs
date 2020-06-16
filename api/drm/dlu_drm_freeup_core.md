<a href="https://easyip2023.github.io/lucurious-docs/" class="button">Main Page</a>

## BRIEF DESCRIPTION

**dlu_drm_freeup_core** - Frees dlu_drm_core memory.

## C SPECIFICATION

```c
#define LUCUR_DRM_API
#include <dluc/lucurious.h>

void dlu_drm_freeup_core(dlu_drm_core *core);
```

## MEMBERS

* **core**: A pointer to the [dlu_drm_core](https://easyip2023.github.io/lucurious-docs/structs/drm/dlu_drm_core) structure.

## DESCRIPTION

The **dlu_drm_freeup_core(3)** function free's up any memory if allocate that belongs to the dlu_drm_core structure. It also releases
active logind session and the active KMS device.


## RETURN VALUES

N/A.

## BUGS

N/A.

## SEE ALSO

[dlu_drm_core(3)](https://easyip2023.github.io/lucurious-docs/structs/drm/dlu_drm_core)
[dlu_drm_init_core(3)](https://easyip2023.github.io/lucurious-docs/api/drm/dlu_drm_init_core)

## AUTHOR

Vincent Davis Jr.
