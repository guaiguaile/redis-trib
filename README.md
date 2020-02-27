# redis-trib
- Non-interactive cluster configuration
- The cluster needs to be created in the form of an IP:PORT, not a host name
- There is no password for `tag: nopass` configuration redis cluster
- Redis cluster configure use Ruby, Redis-trib find in redis version < 5.0
- **Now can also use redis:5.0.7 `redis-cli --cluster` and the cluster configuration support password, but create the cluster require an interactive operation, You still need to use IP:PORT when you create the cluster, not the host name**
