# Demo - Metric Collection
## Goal: Send our freshly created per-container metrics to Prometheus


```yaml
datasources:
  packetcounter:
    annotations:
      metrics.collect: true
      cli.clear-screen-before: "true"
    fields:
      k8s.podName:
        annotations:
          metrics.type: key
      comm:
        annotations:
          metrics.type: key
      packets:
        annotations:
          metrics.type: counter
```

```bash
cd mypacketcounter
sudo -E ig image build -t ghcr.io/mqasimsarfraz/mypacketcounter:metrics .
```

Push the gadget:

```bash
sudo -E ig image push ghcr.io/mqasimsarfraz/mypacketcounter:metrics
```


Start metric collection:

```bash
kubectl gadget run ghcr.io/mqasimsarfraz/mypacketcounter:metrics \
    --all-namespaces --pull always --detach \
    --otel-metrics-name=packetcounter:packetcounter
```

