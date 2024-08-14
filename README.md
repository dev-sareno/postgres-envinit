# postgres-envinit
Extended Postgres Docker image. Added feature for passing init SQL scripts from environment variables

## Usage
NOTE: The base64-encoded value of `CREATE DATABASE testdb;` is `Q1JFQVRFIERBVEFCQVNFIHRlc3RkYjs=`.

AMD64/x86-64:
```shell
$ docker run --rm \
    -e INIT_SQL_SCRIPT_BASE64='Q1JFQVRFIERBVEFCQVNFIHRlc3RkYjs=' \
    docker.io/devsareno/postgres-envinit:v1.0-15-alpine-amd64
```

ARM64:
```shell
$ docker run --rm \
    -e INIT_SQL_SCRIPT_BASE64='Q1JFQVRFIERBVEFCQVNFIHRlc3RkYjs=' \
    docker.io/devsareno/postgres-envinit:v1.0-15-alpine-arm64
```
