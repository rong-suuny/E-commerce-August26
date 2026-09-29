# API Gateway

The gateway runs on port `8080` and provides fixed local routes while service discovery is not configured yet.

- `/api/products/**` and `/api/product-category/**` -> Catalog Service (`8081`)
- Other `/api/**` requests -> Existing monolith (`8445`)

The backend URLs can be overridden with `CATALOG_SERVICE_URL` and `MONOLITH_SERVICE_URL`.
