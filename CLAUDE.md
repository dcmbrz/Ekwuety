# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Common Commands

### Infrastructure
- Start core services (Typesense, Qdrant, RabbitMQ): `docker-compose up -d`

### Knowledge Pack Generation
- Build a specific domain pack: `./scripts/build-knowledge-pack.sh <domain>`
  - Supported domains: `medical`, `agriculture`, `legal`, `education`

## Architecture Overview

Ekwuety is a dual-mode African neural search engine designed for both online connectivity and offline accessibility.

### High-Level Structure
- **Cloud Layer (`apps/cloud/`)**:
    - `crawler`: Specialized web crawling with African content priority.
    - `indexer`: Embedding generation and vector/keyword index management.
    - `knowledge_curator`: Generates curated Knowledge Packs using Llama 3.1 70B.
    - `search_api`: REST and WebSocket API for search queries.
- **Edge Layer (`apps/edge/`)**:
    - `mobile` & `desktop`: Flutter applications providing an offline-first AI assistant experience.
    - Local inference is handled via quantized models on consumer hardware.
- **Shared Packages (`packages/`)**:
    - `hybrid-rag`: Implements vector search, keyword search, RRF fusion, and cross-encoder reranking.
    - `inference`: Manages model loading, quantization, and hardware acceleration.
    - `burst-sync`: Handles efficient data synchronization for intermittent connectivity.
- **Knowledge Packs (`knowledge-packs/`)**:
    - Contains schemas and generators for domain-specific curated knowledge bundles.

### Core Data Flow
1. **Discovery**: Crawler finds relevant African content.
2. **Indexing**: Indexer creates embeddings and indices.
3. **Curation**: Knowledge Curator builds offline-ready packs.
4. **Distribution**: Burst Sync delivers these packs to Edge devices.
5. **Querying**: Edge devices serve queries offline using local models.

### Infrastructure Stack
- **Search**: Typesense (full-text) and Qdrant (vector).
- **Orchestration**: Kubernetes.
- **Messaging**: RabbitMQ.
- **Distribution**: CDN for Knowledge Packs.
