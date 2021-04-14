global:
  scrape_interval: 15
scrape_configs:
  - job_name: 'microservice'
    metrics_path: /q/metrics/application
    static_configs:
      - targets: ['localhost:8080']