#! /bin/bash

# lumos
sudo ip netns add ns1
sudo ip link set ens2f0 netns ns1
sudo ip netns exec ns1 ip link set lo up
sudo ip netns exec ns1 ip link set ens2f0 up
sudo ip netns exec ns1 ip addr add 10.10.10.1/24 dev ens2f0
sudo ip netns exec ns1 ip a
sudo ip netns exec ns1 arp -s 10.10.10.2 fe:9a:85:9f:b5:28
sudo ip netns exec ns1 arp -s 10.10.10.3 06:b7:b3:4a:63:87
sudo ip netns exec ns1 arp -s 10.10.10.4 42:1a:cb:44:54:a6

sudo ip netns add ns2
sudo ip link set ens2f1 netns ns2
sudo ip netns exec ns2 ip link set lo up
sudo ip netns exec ns2 ip link set ens2f1 up
sudo ip netns exec ns2 ip addr add 10.10.10.2/24 dev ens2f1
sudo ip netns exec ns2 ip a
sudo ip netns exec ns2 arp -s 10.10.10.1 f6:45:ec:6e:93:14
sudo ip netns exec ns2 arp -s 10.10.10.3 06:b7:b3:4a:63:87
sudo ip netns exec ns2 arp -s 10.10.10.4 42:1a:cb:44:54:a6



# patronus
sudo ip netns add ns3
sudo ip link set ens2f2 netns ns3
sudo ip netns exec ns3 ip link set lo up
sudo ip netns exec ns3 ip link set ens2f2 up
sudo ip netns exec ns3 ip addr add 10.10.10.3/24 dev ens2f2
sudo ip netns exec ns3 ip a
sudo ip netns exec ns3 arp -s 10.10.10.1 f6:45:ec:6e:93:14
sudo ip netns exec ns3 arp -s 10.10.10.2 fe:9a:85:9f:b5:28
sudo ip netns exec ns3 arp -s 10.10.10.4 42:1a:cb:44:54:a6




sudo ip netns add ns4
sudo ip link set ens2f3 netns ns4
sudo ip netns exec ns4 ip link set lo up
sudo ip netns exec ns4 ip link set ens2f3 up
sudo ip netns exec ns4 ip addr add 10.10.10.4/24 dev ens2f3
sudo ip netns exec ns4 ip a
sudo ip netns exec ns4 arp -s 10.10.10.1 f6:45:ec:6e:93:14
sudo ip netns exec ns4 arp -s 10.10.10.2 fe:9a:85:9f:b5:28
sudo ip netns exec ns4 arp -s 10.10.10.3 06:b7:b3:4a:63:87



