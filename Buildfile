---
environment:
  app: "http-whoami"
stages:
  - name: ENV
    image: ascend6/forseti-go:latest
    steps:
      - commands:
        - ["env"]
        - ["pwd"]
        - ["ls"]
  - name: Build
    image: ascend6/forseti-go:latest
