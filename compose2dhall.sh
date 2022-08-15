#/bin/sh
docker run -v $PWD:/data --interactive --rm dhallhaskell/dhall-yaml yaml-to-dhall $(cat /data/dhall-docker-compose/compose/v3/package.dhall) < docker-compose.yml > docker-compose.dhall
# docker run -v $PWD:/data --interactive --rm dhallhaskell/dhall-yaml yaml-to-dhall '/data/dhall-docker-compose/compose/v3/types.dhall' < docker-compose.yml > docker-compose.dhall
