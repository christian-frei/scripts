#!/bin/bash

# github CLI is required
which gh || exit 1;

# gematik repos
gh repo clone gematik/api-ti-messenger
gh repo clone gematik/api-vzd

# kosyma
gh repo clone kosyma-io/AWS
gh repo clone kosyma-io/federationlist
gh repo clone kosyma-io/kosyma-website
gh repo clone kosyma-io/registrationservice-backend
gh repo clone kosyma-io/registrationservice-frontend
gh repo clone kosyma-io/ujumbe-client
gh repo clone kosyma-io/ujumbe-faragha
gh repo clone kosyma-io/ujumbe-orgadmin-client
gh repo clone kosyma-io/ujumbe-server
gh repo clone kosyma-io/ujumbe-server-gematik
gh repo clone kosyma-io/ujumbe-vzd
