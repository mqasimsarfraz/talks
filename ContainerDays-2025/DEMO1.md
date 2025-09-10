# Demo - Packet Counter Gadget
## Goal: Write a Gadget to count packets sent per container

Run an existing gadget:

```bash
sudo -E ig run ghcr.io/mqasimsarfraz/packetcounter:latest 
```

Get the source for packetcounter gadget:

```bash
ig init --from ghcr.io/mqasimsarfraz/packetcounter:latest mypacketcounter
```

Build the gadget:

```bash
cd mypacketcounter
sudo -E ig image build -t ghcr.io/mqasimsarfraz/mypacketcounter:container .
```

Run the gadget with container filtering:

```bash
sudo -E ig run ghcr.io/mqasimsarfraz/mypacketcounter:container --containername dns_test_container_1
```

Push the gadget:

```bash
sudo -E ig image push ghcr.io/mqasimsarfraz/mypacketcounter:container
```


Taking it to Kubernetes:

```bash
kubectl gadget run ghcr.io/mqasimsarfraz/mypacketcounter:container --all-namespaces --pull always
```
