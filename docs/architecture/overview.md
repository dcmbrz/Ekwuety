# Ekwuety Architecture Overview

## System Architecture

Ekwuety implements a dual-mode architecture:

### Cloud Layer

- **Crawler**: Discovers and indexes African content with priority boosting
- **Indexer**: Generates embeddings and maintains vector + keyword indices
- **Knowledge Curator**: Uses Llama 3.1 70B to generate curated knowledge packs
- **Search API**: REST and WebSocket endpoints for real-time search

### Edge Layer

- **Mobile App**: Flutter-based offline-first mobile client
- **Desktop App**: Tauri-based desktop application
- **On-device Inference**: Quantized models running on consumer hardware

### Shared Packages

- **hybrid-rag**: Retrieval-augmented generation with fusion ranking
- **inference**: Model loading and hardware acceleration
- **burst-sync**: Efficient synchronization for intermittent connectivity

## Data Flow

1. Crawler discovers African content
2. Indexer creates embeddings and indexes
3. Knowledge Curator generates packs for offline use
4. Burst Sync delivers packs to edge devices
5. Edge devices serve queries offline using local models

## Deployment

- Kubernetes for container orchestration
- Typesense for fast, typo-tolerant full-text search
- Qdrant for high-performance vector operations
- RabbitMQ for async task processing
- CDN for global knowledge pack distribution