### Build an image

```
docker build . -t volume_app:latest
```

### Mount directory with the code into container as a volume

```
docker run --rm --name=volume_app -v "$PWD":/app volume_app:latest
```
