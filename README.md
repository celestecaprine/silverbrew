# Fedora Zonaite

[![build-zonaite](https://github.com/celestecaprine/zonaite/actions/workflows/build.yml/badge.svg)](https://github.com/celestecaprine/zonaite/actions/workflows/build.yml)

This is a custom build forking off of u-blue's starting-point image. If you want to learn how to make your own, check out [their guide](https://ublue.it/making-your-own/) for more information.

## Installation

> **Warning**
> This is an experimental feature and should not be used in production, try it in a VM for a while!

To rebase an existing Silverblue/Kinoite installation to the latest build:

```
sudo rpm-ostree rebase ostree-unverified-registry:ghcr.io/celestecaprine/zonaite:latest
```

This repository builds date tags as well, so if you want to rebase to a particular day's build:

```
sudo rpm-ostree rebase ostree-unverified-registry:ghcr.io/celestecaprine/zonaite:20230530
```

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.

## Verification

These images are signed with sisgstore's [cosign](https://docs.sigstore.dev/cosign/overview/). You can verify the signature by downloading the `cosign.pub` key from this repo and running the following command:

    cosign verify --key cosign.pub ghcr.io/celestecaprine/zonaite
