# debug-tools
This image will be used to test your work in your orchestrator with some pre-installed tools.
## Container image addresses
### On github registry (IPv4)
```
ghcr.io/vkaylee/debug-tools:main
```
### On docker hub registry (IPv4/IPv6)
```
vleedev/debug-tools:main
```
## Compatible

- Openshift
- Kubernetes
- Docker

## Pre-installed tools
- nameif
- iptunnel
### Shell
- `bash`
### Programming
- `python3`
### Editor tools
- `vim`
- `nano`
### Compression tools
- `tar`
- `unzip`
- `gzip`
- `gunzip`
### Download tools
- `curl`
### Network tools
- `ip`
- `ipmaddr`
- `arp`
- `arping` from iputils
- `clockdiff` from iputils
- `ping` from iputils
- `tracepath` from iputils
- `telnet`
- `ifconfig`
- `route`
- `netstat`
- `scp`
- `ss`
- `ssh`
### Container tools
- `podman` Manage containers, pods, and images with Podman https://podman.io/
### DNS tools
- `dig` (in dnsutils) - query the DNS in various ways
- `nslookup` (in dnsutils) - the older way to do it
- `nsupdate` (in dnsutils) - perform dynamic updates (See RFC2136)
### Testing tool
- `ab` Apache HTTP Server (utility programs for web servers)
- `iperf3` Bandwidth test: https://iperf.fr/
- `fortio` Stress test, echo server, mock server and more at https://github.com/fortio/fortio
- `go_http_server_mock_test` mock server, check at https://github.com/vkaylee/go_http_server_mock_test
