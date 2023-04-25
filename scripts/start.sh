#!/bin/bash

istioctl install --set profile=demo --set meshConfig.outboundTrafficPolicy.mode=REGISTRY_ONLY -y
# kubectl get IstioOperator installed-state -n istio-system -o jsonpath='{.spec.meshConfig.outboundTrafficPolicy.mode}'
# kubectl -n istio-system get IstioOperator installed-state -o yaml > installed-state.yaml
kubectl label namespace default istio-injection=enabled

/bin/bash /scripts/main-install.sh
minikube tunnel

# kubectl apply -f samples/addons
# kubectl rollout status deployment/kiali -n istio-system
# istioctl dashboard kiali
