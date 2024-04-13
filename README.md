# healthchecker

A simple docker container that will periodically send a POST request to a defined endpoint. This is mainly made to be used with [healthchecks.io](https://healthchecks.io/). However, it would probably work with other use cases.

## Usage

`docker run -d -e HEALTHCHECK_URL="" -e DELAY="" z3orc/healthchecker`

`HEALTHCHECK_URL` is a string containing the endpoint URL.
`DELAY` is the time between each request, for example: `DELAY="1m"` for 1 minute.

### Docker compose

You can also use this container in docker-compose. Here is an example:

```yaml
version: "3"
services:
  healthchecker:
    image: z3orc/healthchecker
      environment:
        HEALTHCHECKER_URL="https://example.com/healthchecker"
        DELAY="1m"
```

This will send a post request to `https://example.com/healthchecker` every minute.
