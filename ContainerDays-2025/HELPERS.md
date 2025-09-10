## Demo 1

Clean up

```bash
rm -rf mypacketcounter
```

Generate traffic

```bash
./mypacketcounter/hack/start_containers.sh 5
```

Stop generation:

```bash
./mypacketcounter/hack/stop_containers.sh
```

Restart minikube:

```bash
minikube start
```

Connect to grafana:

```bash
kubectl port-forward -n monitoring svc/grafana 3000:80 --address 0.0.0.0
```
