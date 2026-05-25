# Ekwuety

A dual-mode African neural search engine that operates online as a neural search engine and offline as an AI knowledge assistant using on-device LLMs and curated Knowledge Packs.

## Architecture

Ekwuety is designed with a hybrid cloud-edge architecture:

- **Cloud Mode**: Full neural search capabilities with real-time indexing, vector databases, and knowledge pack generation
- **Edge Mode**: Offline-first AI assistant running on-device LLMs with pre-curated Knowledge Packs

### Key Features

- 🌍 **African Content Priority**: Specialized crawling and indexing for African content
- 📦 **Knowledge Packs**: Curated, offline-ready knowledge bundles for specific domains
- 🔄 **Burst Sync**: Efficient sync mechanism for intermittent connectivity
- 🧠 **Hybrid RAG**: Combines vector and keyword search with RRF fusion
- 📱 **Multi-tier Device Support**: Optimized for low-end to flagship devices

## Project Structure

### Apps

| Package | Description |
|---------|-------------|
| `apps/cloud/crawler` | Web crawler with African content boost (Firecrawl/Scrapy) |
| `apps/cloud/indexer` | Document indexing with embeddings and vector database |
| `apps/cloud/knowledge_curator` | Knowledge pack generation using Llama 3.1 70B |
| `apps/cloud/search_api` | REST + WebSocket API for search queries |
| `apps/edge/mobile` | Flutter mobile app with offline-first design |
| `apps/edge/desktop` | Flutter desktop application |

### Packages

| Package | Description |
|---------|-------------|
| `packages/hybrid-rag` | Vector search, keyword search, RRF fusion, and cross-encoder reranking |
| `packages/inference` | Model loading, quantization, and hardware acceleration |
| `packages/burst-sync` | Chunked sync with integrity verification and delta updates |

### Knowledge Packs

Domain-specific curated knowledge bundles for offline use:
- Medical/Healthcare
- Agriculture
- Legal
- Education

## Getting Started

```bash
# Clone the repository
git clone https://github.com/ekwuety/ekwuety.git
cd ekwuety

# Start infrastructure services
docker-compose up -d

# Install dependencies (when ready)
# pnpm install
```

## Infrastructure

- **Typesense**: Fast, typo-tolerant search engine
- **Qdrant**: High-performance vector database
- **RabbitMQ**: Message queue for async processing
- **CDN**: Global content delivery for knowledge packs

## License

[License TBD]