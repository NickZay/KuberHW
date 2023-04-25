#!/bin/bash

/bin/bash /scripts/main-delete.sh

istioctl uninstall -y --purge
kubectl label namespace default istio-injection -
