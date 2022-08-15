{ services =
  { frontend =
    { environment = [ "GET_HOSTS_FROM=dns" ]
    , image = "gcr.io/google-samples/gb-frontend:v4"
    , labels.`kompose.service.type` = "LoadBalancer"
    , ports = [ "80:80" ]
    }
  , redis-master = { image = "k8s.gcr.io/redis:e2e", ports = [ "6379" ] }
  , redis-slave =
    { environment = [ "GET_HOSTS_FROM=dns" ]
    , image = "gcr.io/google_samples/gb-redisslave:v1"
    , ports = [ "6379" ]
    }
  }
, version = "3"
}
