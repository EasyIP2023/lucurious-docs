<a href="https://easyip2023.github.io/lucurious-docs/" class="button">Main Page</a>

## BRIEF DESCRIPTION

**dlu_drm_init_core** - This will return a pointer a dlu_drm_core structure.

## C SPECIFICATION

```c
#define LUCUR_DRM_API
#include> <dluc/lucurious.h>

dlu_drm_core *dlu_drm_init_core();
```

## MEMBERS

N/A.

## DESCRIPTION

This function returns a pointer of type [dlu_drm_core](https://easyip2023.github.io/lucurious-docs/structs/drm/dlu_drm_core) structure.

## RETURN VALUES

Upon failure dlu_drm_core returns **NULL**. Upon success an address to the starting member of the dlu_drm_core structure.

## BUGS

N/A.

## SEE ALSO

[dlu_drm_core(3)](https://easyip2023.github.io/lucurious-docs/structs/drm/dlu_drm_core)
[dlu_drm_freeup_core(3)](https://easyip2023.github.io/lucurious-docs/api/drm/dlu_drm_freeup_core)

## AUTHOR

Vincent Davis Jr.