#!/bin/bash
lxc launch ubuntu:20.04 --vm -c limits.cpu=2 -c limits.memory=4GiB node1
lxc launch ubuntu:20.04 --vm -c limits.cpu=2 -c limits.memory=4GiB node2
lxc launch ubuntu:20.04 --vm -c limits.cpu=2 -c limits.memory=4GiB node3
lxc launch ubuntu:20.04 --vm -c limits.cpu=2 -c limits.memory=4GiB node4
