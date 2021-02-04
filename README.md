# tw-ebook-search-api-docker

Docker deployment for https://github.com/Taiwan-Ebook-Lover/TaiwanEbookSearch-API

---
- Externalised `.env` file

Example of execution command:
```
docker run -it -p 7777:7777 -v ${path_to_env_file}:/app/.env -e EBOOK_SERACH_API_VERSTION=master acyc/labz:tw-ebook-search
```

#### Parameters:
- `-v ${path_to_env_file}:/app/.env` The `.env` file
