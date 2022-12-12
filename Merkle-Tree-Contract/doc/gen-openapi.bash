#!/bin/bash

protoc ../src/main/proto/MerkleTree.proto -I../src/main/proto -I../../../SureThing_Core_Data/data-types/proto -I../../Merkle-Tree-Contract/src/main/proto --openapi_out=.

sed -i 's/application\/json/application\/x-protobuf/g' ./openapi.yaml

python3 swagger-yaml-to-html.py <./openapi.yaml >openapi.html