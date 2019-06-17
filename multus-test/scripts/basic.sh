#!/usr/bin/env bats

#setup() {
#}

#teardown() {
#}

@test "Check the multus binary exists" {
    [ -d /host/usr/libexec/cni -a -f /host/usr/libexec/cni/multus ]
}

@test "Check multus config file exists" {
    [ -d /host/etc/cni/net.d -a -f /host/etc/cni/net.d/70-multus.conf ]
}

@test "Check multus.kubeconfig file exists" {
    [ -d /host/etc/cni/net.d/multus.d -a -f /host/etc/cni/net.d/multus.d/multus.kubeconfig ]
}
