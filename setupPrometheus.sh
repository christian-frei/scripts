#! /bin/bash

cat > prometheus.yml <<-EOF
global:
  scrape_interval: 15s
scrape_configs:
  - job_name: 'microservice'
    metrics_path: /q/metrics/application
    static_configs:
      - targets: ['localhost:8080']
EOF

exit 0
