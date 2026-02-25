# git

Minimal Alpine Linux-based Docker image with Git and CA certificates.

## Usage

```dockerfile
FROM ghcr.io/gofertesting/git:latest
```

Or run directly:

```sh
docker run --rm ghcr.io/gofertesting/git:latest git version
```

## What's included

- [Alpine Linux 3.23](https://alpinelinux.org/)
- `git`
- `ca-certificates`

## Building locally

```sh
docker build -t git .
```
