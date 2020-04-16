# docker_3d-photo-inpainting

Dockerfile for [3d-photo-inpainting](https://github.com/vt-vl-lab/3d-photo-inpainting). Based on [this issue](https://github.com/vt-vl-lab/3d-photo-inpainting/issues/23). Automated build available on Docker Hub as [`ryanfb/3d-photo-inpainting`](https://hub.docker.com/r/ryanfb/3d-photo-inpainting).

**NOTE:**

You'll likely need to wrap your script invocation in xvfb-run, e.g.:

    xvfb-run python main.py --config argument.yml
