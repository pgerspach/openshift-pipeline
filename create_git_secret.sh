#!/bin/bash
read -p 'Please enter your email: ' SSH_EMAIL
ssh-keygen -t ed25519 -f ./id_ed25519 -C $SSH_EMAIL -N ""
yq w -i ./ci-chart/templates/git-secret.yaml 'data.ssh-privatekey' `cat id_ed25519 | base64`

echo "Your ssh key has been generated and is contained within git-secret.yaml. Please add the public key to your github repository deploy keys"
