# Protoc actions

This actions allow you generate client and server for grpc

# How to use

```yml
- name: Genereate code for squzy-storage protofile
  uses: squzy/protoc-actions@v2.0.9
  with:
    path: --proto_path=. --go_out=. --go_opt=paths=source_relative ./testProto/A/A.proto
```

_Supports:_

- GRPC client server
- GRPC gateway
- Swagger from protofiles
