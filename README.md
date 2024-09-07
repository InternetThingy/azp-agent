# azp-agent
Contains images for Microsoft docker ADO agent (Alpine, Ubuntu and Windows)

```
docker run -d \
  -e AZP_URL='<AZP_URL>' \
  -e AZP_TOKEN='<AZP_TOKEN>' \
  -e AZP_POOL='<AZP_POOL>' \
  -e AZP_AGENT_NAME='<AGENT_NAME>' \
  --name '<CONTAINER_NAME>' \
  internetthingy/azp-agent:alpine-latest
```
```
docker run -d \
  -e AZP_URL='<AZP_URL>' \
  -e AZP_TOKEN='<AZP_TOKEN>' \
  -e AZP_POOL='<AZP_POOL>' \
  -e AZP_AGENT_NAME='<AGENT_NAME>' \
  --name '<CONTAINER_NAME>' \
  internetthingy/azp-agent:ubuntu-latest
```
```
docker run -d \
  -e AZP_URL='<AZP_URL>' \
  -e AZP_TOKEN='<AZP_TOKEN>' \
  -e AZP_POOL='<AZP_POOL>' \
  -e AZP_AGENT_NAME='<AGENT_NAME>' \
  --name '<CONTAINER_NAME>' \
  internetthingy/azp-agent:windows-latest
```

https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops

⁠https://github.com/InternetThingy/azp-agent⁠