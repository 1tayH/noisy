# Examples

## Run multiple containers using `docker-compose`

`docker-compose` is useful if you want to run more than one container at the same time, to generate more noise. To do so, simply run the following commands:
```
$ cd examples/docker-compose
$ docker-compose build
$ docker-compose up --scale noisy=<number-of-containers>
```
