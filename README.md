# Docker Compilation Environment

**VERSION**: `0.2.0`

A Docker image for compilation of packages for _CentOS 7_ systems.

## Tags

Image: `uberspace/docker-compile`. The _master_ brunch ist just meta stuff, the
tags come from the `tag/…` branches:

- `latest`: up-to-date base _CentOS 7_ with _epel-release_ and tools.
- `gcc-4.9.4`: _latest_ with added _gcc_ and _g++_ in  `v4.9.4` (in `/usr/local/bin/`).
