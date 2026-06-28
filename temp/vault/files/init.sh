#!/usr/bin/env bash

export VAULT_ADDR='http://0.0.0.0:8200'

vault operator init -key-shares=1 -key-threshold=1 -format=json > /vault/config/init-keys.json