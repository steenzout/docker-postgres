# postgres example

To build a new image:

```
$ docker build \
	-t \
	steenzout/postgres-example:9.6 \
	-f Dockerfile \
	.
```

To run this new image:

```
$ docker run \
	-d \
	--name example \
	-e POSTGRES_USER=${USER} \
	-e POSTGRES_DB=example \
	-e POSTGRES_PASSWORD=secret \
	-p 5432:5432 steenzout/postgres-example:9.6
```

You can now access the database using:

```
$ psql -h 127.0.0.1 example
```

To cleanup:

```
$ docker stop example
$ docker rm example
```

