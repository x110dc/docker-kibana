### Dependencies:

You need an elasticsearch instance.  It's easy to use another Docker image.  See the Makefile for an example.

### To run:

```
docker run -d --name kibana --link elasticsearch:es --publish=80:80 --env HOSTNAME=${hostname} x110dc/kibana
```

Uses nginx.

It takes one (required) environment variable: HOSTNAME.  That will be used as the nginx `server_name`.

It expects to find the elasticsearch instance at the hostname `es`.  That's easy to do with `--link`.
