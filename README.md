# tw-ebook-search-api-docker

Docker deployment for https://github.com/Taiwan-Ebook-Lover/TaiwanEbookSearch-API

Currently using version 0.1.6

---
- Externalised TaiwanEbookSearch-API

The TaiwanEbookSearch-API needs to install and build before mount to docker

Example of execution command:
```
docker run -it -p 7777:7777 -v ${path_to_TaiwanEbookSearch-API}:/app acyc/labz:tw-ebook-search
```

#### Parameters:
- `-v ${path_to_TaiwanEbookSearch-API}:/app` The "TaiwanEbookSearch-API" folder
