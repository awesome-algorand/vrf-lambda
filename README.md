#### Build
```bash
docker build --platform linux/amd64 -t vrf-sam:test .
```

#### Run
```bash
docker run --platform linux/amd64 -p 9000:8080 vrf-sam:test
```

#### Test library
```bash
curl "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{}'
```
