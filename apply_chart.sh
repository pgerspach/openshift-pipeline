#!/bin/bash

cat <<EOF | oc apply -f -
`helm template ci-chart`
