#!/bin/sh
docker run -v $PWD:/data --interactive --rm dhallhaskell/dhall-yaml dhall-to-yaml-ng <<< '/data/dhall-docker-compose/compose/v3/package.dhall /\ /data/docker-compose.dhall' > revised-docker-compose.yml
