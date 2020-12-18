# tiny-daemon

A very small image whose entrypoint does nothing but sleep.

## Uses

Useful when you just need an image and any image will do.

For example, in Kubernetes, perhaps you want to test scheduling. Or perhaps you want to test admission controllers.

## Building

```console
docker build -t <img> .
$ docker push <img>
```
