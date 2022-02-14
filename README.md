# fastapi-deploy
Project to test fastAPI on Azure

Create Service Principal:
```bash
az ad sp create-for-rbac --name "fastapidemo" --role contributor \
--scopes /subscriptions/SUBSCRIPTION_ID/resourceGroups/RESOURCE_GROUP \
--sdk-auth
```
