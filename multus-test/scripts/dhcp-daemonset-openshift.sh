#!/usr/bin/env bats

#setup() {
#}

#teardown() {
#}

@test "Check the DHCP daemon socket exists" {
    [ -S /host/run/cni/dhcp.sock ]
}

