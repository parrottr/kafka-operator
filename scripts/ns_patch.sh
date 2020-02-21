#!/usr/bin/env bash

: ${1?"Usage: $0 PATCH_FILE NAMESPACE"}
: ${2?"Usage: $0 PATCH_FILE NAMESPACE"}

cat << EOF > ${1}
bases:
  - ../certmanager-with-auth-proxy

# Adds namespace to all resources.
namespace: ${2}

namePrefix: kafka-operator-

patchesStrategicMerge:
  - manager_image_patch.yaml
EOF
