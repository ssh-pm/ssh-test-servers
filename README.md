# ssh-test-servers
A collection of Dockerfiles, Vagrantfiles, and whatever else that describe valid ssh servers, which can then be used of automated (or not) testing of SSH.pm.

SSH.pm manages machines that accept SSH connection, they may be physical machines, virtual machines, or containers. For testing purposes, containers and virtual machines should be enough if we have a large variaty of environment like operating systems. Thus, this repository keeps all Dockerfiles and Vagrantfiles that can describe such environments, and thus test SSH.pm automatically, or be manually created for debugging or manual testing.

## Non-Linux Operating Systems

Note that Linux is the priority here, as for now SSH.pm doesn't intend to support Windows, and does not guarantee compatibility with OS X, BSD, or another Unix-like opertating systems.

**But as soon as we get to alpha phase we *will* add support to other Unix-like systems**


## Build automation

Execute the build automation script:

`./build-images`

All Dockerfiles inside the `docker/` path will be built.

Note that all Dockerfiles  should respect the pattern `Dockerfile.$IMAGE_TAG`.

