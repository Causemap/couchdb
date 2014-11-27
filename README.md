CouchDB with Facebook and Twitter auth
===============================================================================

This here is an implementation of couchdb that includes a plugin for [fb and
twitter oauth](https://github.com/ocastalabs/CouchDB-XO_Auth)


Installation
-------------------------------------------------------------------------------

```bash
$ git submodule init
$ docker build -t causemap/couchdb-docker .
$ docker run -p 5984:5984 causemap/couchdb-docker
```
