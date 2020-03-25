```
$ docker pull golang:1.14-alpine
````

```
$ docker run -it  golang:1.14-alpine

/go #
```

```
$ docker run -it golang:1.14-alpine go version

go version go1.14.1 linux/amd64
```
------------------------
```
$ docker-compose up
```

```
$ docker-compose run api

go: creating new go.mod: module go-docker
```

```
$ docker-compose run api sh

/go/src/go-docker #
```
