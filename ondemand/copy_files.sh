#!/bin/bash
set -e

trap 'ret=$?; test $ret -ne 0 && printf "failed\n\n" >&2; exit $ret' EXIT

log_info() {
  printf "\n\e[0;35m $1\e[0m\n\n"
}

log_info "Copying cluster-config.yml to /etc/ood/config/clusters.d/hpc.yml"
cp -f cluster-config.yml /etc/ood/config/clusters.d/hpc.yml

log_info "Copying bc_desktop.yml to /etc/ood/config/apps/bc_desktop/hpc.yml"
cp -f bc_desktop.yml /etc/ood/config/apps/bc_desktop/hpc.yml
