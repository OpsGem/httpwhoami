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
        - ["find", "/app"]
        - ["df"]
  - name: Build
    image: ascend6/forseti-go:latest
