# IPERF3 USAGE
## Test bandwidth
### Server mode
Default port (5521), custom port with option `-p <portNumber>`
```shell
iperf3 -s
```
### Client mode
Default port (5521), custom port with option `-p <portNumber>`
```shell
iperf3 -c <serverIpAddress>
```

#### Example result on server
```log
iperf3 -s
-----------------------------------------------------------
Server listening on 5201
-----------------------------------------------------------
Accepted connection from 2406:da18:630:7a1e:87ac::5, port 38060
[  5] local 2406:da18:630:7a1e:87ac::2 port 5201 connected to 2406:da18:630:7a1e:87ac::5 port 38072
[ ID] Interval           Transfer     Bandwidth
[  5]   0.00-1.00   sec  2.44 GBytes  21.0 Gbits/sec                  
[  5]   1.00-2.00   sec  2.53 GBytes  21.7 Gbits/sec                  
[  5]   2.00-3.00   sec  2.52 GBytes  21.6 Gbits/sec                  
[  5]   3.00-4.00   sec  2.58 GBytes  22.2 Gbits/sec                  
[  5]   4.00-5.00   sec  2.55 GBytes  21.9 Gbits/sec                  
[  5]   5.00-6.00   sec  2.53 GBytes  21.7 Gbits/sec                  
[  5]   6.00-7.00   sec  2.54 GBytes  21.8 Gbits/sec                  
[  5]   7.00-8.00   sec  2.54 GBytes  21.8 Gbits/sec                  
[  5]   8.00-9.00   sec  2.55 GBytes  21.9 Gbits/sec                  
[  5]   9.00-10.00  sec  2.55 GBytes  21.9 Gbits/sec                  
[  5]  10.00-10.04  sec   109 MBytes  21.7 Gbits/sec                  
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bandwidth
[  5]   0.00-10.04  sec  0.00 Bytes  0.00 bits/sec                  sender
[  5]   0.00-10.04  sec  25.4 GBytes  21.7 Gbits/sec                  receiver
-----------------------------------------------------------
Server listening on 5201
-----------------------------------------------------------
```

#### Example result on client
```log
iperf3 -c 2406:da18:630:7a1e:87ac::2 
Connecting to host 2406:da18:630:7a1e:87ac::2, port 5201
[  4] local 2406:da18:630:7a1e:87ac::5 port 38072 connected to 2406:da18:630:7a1e:87ac::2 port 5201
[ ID] Interval           Transfer     Bandwidth       Retr  Cwnd
[  4]   0.00-1.00   sec  2.55 GBytes  21.9 Gbits/sec   46   1.07 MBytes       
[  4]   1.00-2.00   sec  2.51 GBytes  21.6 Gbits/sec   63   1.92 MBytes       
[  4]   2.00-3.00   sec  2.53 GBytes  21.8 Gbits/sec  371   1.93 MBytes       
[  4]   3.00-4.00   sec  2.58 GBytes  22.2 Gbits/sec  201   1.95 MBytes       
[  4]   4.00-5.00   sec  2.55 GBytes  21.9 Gbits/sec  107   1.95 MBytes       
[  4]   5.00-6.00   sec  2.52 GBytes  21.7 Gbits/sec   31   2.02 MBytes       
[  4]   6.00-7.00   sec  2.55 GBytes  21.9 Gbits/sec    0   2.02 MBytes       
[  4]   7.00-8.00   sec  2.54 GBytes  21.8 Gbits/sec   45   2.02 MBytes       
[  4]   8.00-9.00   sec  2.55 GBytes  21.9 Gbits/sec    0   2.05 MBytes       
[  4]   9.00-10.00  sec  2.55 GBytes  21.9 Gbits/sec    0   2.09 MBytes       
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bandwidth       Retr
[  4]   0.00-10.00  sec  25.4 GBytes  21.8 Gbits/sec  864             sender
[  4]   0.00-10.00  sec  25.4 GBytes  21.8 Gbits/sec                  receiver

iperf Done.
```