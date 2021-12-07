# Prometheus Samples

My examples for Prometheus and Alert Manager.
See https://prometheus.io/ for details on Prometheus.

Tested on:

- `Ubuntu 20.04.3 LTS` with packages:
   - `prometheus_2.15.2+ds-2_amd64.deb`
   - `prometheus-alertmanager_0.15.3+ds-3ubuntu1_amd64.deb`
   - `prometheus-node-exporter_0.18.1+ds-2_amd64.deb`
- `Debian 10` with packages:
  - TODO
   
To use these examples simply copy `tree/*` to your `/` (but rather
backup your data first!)

Your Prometheus should be reached on
- `http://IP_OF_YOUR_MACHINE:9090`

WARNING! Free swap monitor in 
- `tree/etc/prometheus/rules/hpmem.rules`
will not work on host *without* swap (typical cloud setup)!



