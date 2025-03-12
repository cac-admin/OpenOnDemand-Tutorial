#!/bin/bash
set -e

trap 'ret=$?; test $ret -ne 0 && printf "failed\n\n" >&2; exit $ret' EXIT

log_info() {
  printf "\n\e[0;35m $1\e[0m\n\n"
}

log_info "Copying custom_theme.yml to /etc/ood/config/ondemand.d folder"
cp -f custom_theme.yml /etc/ood/config/ondemand.d/custom_theme.yml

log_info "Copying custom_theme folder to /var/www/ood/public"
cp -rf themes/custom_theme /var/www/ood/public
