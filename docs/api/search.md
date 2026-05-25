# Search API Documentation

## Endpoints

### POST /search

Execute a neural search query.

**Request Body:**
```json
{
  "query": "string",
  "limit": 10,
  "filters": {},
  "mode": "hybrid" | "vector" | "keyword"
}
```

**Response:**
```json
{
  "results": [...],
  "total": 100,
  "latency_ms": 45
}
```

### WebSocket /ws/search

Real-time search with streaming results.

### GET /knowledge-packs

List available knowledge packs for download.

### GET /knowledge-packs/:id

Download a specific knowledge pack.

## Authentication

API key via `X-API-Key` header.

## Rate Limits

- Standard: 100 requests/minute
- Premium: 1000 requests/minute