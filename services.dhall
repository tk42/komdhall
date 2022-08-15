let Compose = ./dhall-docker-compose/compose/v3/package.dhall sha256:bff77b825ce0eb3bad0c0bb5e365b10a09f9315da32206e5b8c71682ff985f95

in λ(config : Compose.ComposeConfig)
  -> Compose.ComposeConfig::{
      version = config.version,
      services = Some config.services,
      networks = Some config.networks,
      volumes = Some config.volumes,
  } /\ config
