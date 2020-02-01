#!/bin/sh
kubectl get ns keda >/dev/null 2>/dev/null
#returnCode=${?}
if [ "${?}" -eq 1 ]; then
    echo "Creating namespace 'keda'..."
    kubectl create ns keda
fi