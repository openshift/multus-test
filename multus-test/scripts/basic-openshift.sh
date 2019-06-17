#!/usr/bin/env bats

#setup() {
#}

#teardown() {
#}

@test "Check the multus binary exists" {
    [ -d /host/var/lib/cni/bin/ -a -f /host/var/lib/cni/bin/multus ]
}

@test "Check multus config file exists" {
    [ -d /host/etc/kubernetes/cni/net.d -a -f /host/etc/kubernetes/cni/net.d/00-multus.conf ]
}

@test "Check multus.kubeconfig file exists" {
    [ -d /host/etc/kubernetes/cni/net.d/multus.d -a -f /host/etc/kubernetes/cni/net.d/multus.d/multus.kubeconfig ]
}
