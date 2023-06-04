# Fedora Zonaite

[![build-zonaite](https://github.com/celestecaprine/zonaite/actions/workflows/build.yml/badge.svg)](https://github.com/celestecaprine/zonaite/actions/workflows/build.yml)

This is a custom build forking off of u-blue's starting-point image. If you want to learn how to make your own, check out [their guide](https://ublue.it/making-your-own/) for more information.

## Installation

To rebase an existing Silverblue/Kinoite installation to the latest build, use the zonaite-main image like so:

```
sudo rpm-ostree rebase ostree-unverified-registry:ghcr.io/celestecaprine/zonaite-main:latest
```

This repository builds date tags as well, so if you want to rebase to a particular day's build:

```
sudo rpm-ostree rebase ostree-unverified-registry:ghcr.io/celestecaprine/zonaite-main:20230604
```

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.

To use the zonaite-core image, you'll need to rebase from a Fedora CoreOS install to use it properly, I suggest following the [documentation](https://coreos.github.io/butane/specs/) regarding the Butane spec, and
utilizing the helpful [Butane example](https://github.com/ublue-os/ucore/blob/main/examples/ucore-autorebase.butane) for auto-rebasing onto a uCore image. I only build the stable build, so be sure to use that one.



## Verification

These images are signed with sisgstore's [cosign](https://docs.sigstore.dev/cosign/overview/). You can verify the signature by downloading the `cosign.pub` key from this repo and running the following command:

    cosign verify --key cosign.pub ghcr.io/celestecaprine/zonaite
