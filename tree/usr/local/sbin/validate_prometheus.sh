#!/bin/bash

set -euo pipefail
set -x
cd /
promtool check config /etc/prometheus/prometheus.yml
amtool check-config /etc/prometheus/alertmanager.yml
exit 0



