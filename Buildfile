---
images:
- image:      "ascend6/httpenv2"       # required
  buildroot:  "httpenv2/"              # default: .
  dockerfile: "Dockerfile"             # default: Dockerfile
  server:     "docker.demo.opsgem.net" # default: docker.io
  creds:      "ascend6-docker-opsgem"  # optional ?
  tag:        "test"                   # default: latest
  branches:
    master:
     tag:    "latest"
     server: "docker.io"
     creds:  "ascend6-docker-io"
    staging:
      tag:    "staging"
    rc*:
      tag: "{{.branch}}" 

