#!/bin/bash

function get_current_ip() {
    local current_ip=$(ip route get 1 | awk '{print $NF;exit}')
    echo ${current_ip}
}

function get_ip_from_dns(){
    local _dns_resolved_ip
    dns_resolved_ip=$(dig +short $(hostname -f))
    echo ${dns_resolved_ip}
}

get_current_ip
get_ip_from_dns
