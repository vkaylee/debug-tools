# debug-tools
This image will be used to test your work in your orchestrator with some pre-installed tools.
## Container image address
```
ghcr.io/vkaylee/debug-tools:main
```

## Compatible

- Openshift
- Kubernetes
- Docker

## Pre-installed tools
- Apache HTTP Server (utility programs for web servers) https://packages.debian.org/buster/apache2-utils
- Buster OS ENV
- Bash
- Python
- Curl
- Wget
- tar
- UnZip
- gzip
- gunzip
- ping
- vim
- nano
- telnet
- scp
- ssh
- ifconfig
- ip
- route
- arp
- nameif
- ipmaddr
- iptunnel
- netstat
- ss
- nstat
### DNS tools
- `dig` (in dnsutils) - query the DNS in various ways
- `nslookup` (in dnsutils) - the older way to do it
- `nsupdate` (in dnsutils) - perform dynamic updates (See RFC2136)
### Testing tool
- `fortio` Stress test, echo server, mock server and more at https://github.com/fortio/fortio
- `go_http_server_mock_test` mock server, check at https://github.com/vkaylee/go_http_server_mock_test
