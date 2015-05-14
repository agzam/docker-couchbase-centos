to build:

    docker build -t=agzam/couchbase .

to run:

    docker run -d --name=couchbase -p 11210:11210 -p 8091:8091 -p 8092:8092 agzam/couchbase

to open admin tool:

    open http://$(boot2docker ip 2>/dev/null):8091

for making it accessible within local network, see: 

    https://github.com/boot2docker/boot2docker/blob/master/doc/WORKAROUNDS.md
