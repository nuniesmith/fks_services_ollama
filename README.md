# fks_ollama

Standalone Ollama service for local LLM inference.

## Overview

This service provides local LLM inference using Ollama. It's used by:
- `fks_ai` - For strategy generation and analysis
- `fks_analyze_main` - For RAG and document analysis

## Configuration

- **Port**: 11434
- **Service Name**: `fks_ollama`
- **Container Name**: `fks-ollama`

## Usage

### Start the service

```bash
docker-compose up -d
```

### Pull models

```bash
docker exec fks-ollama ollama pull llama3.2:3b
docker exec fks-ollama ollama pull bge-m3
```

### Check health

```bash
curl http://localhost:11434/api/tags
```

## GPU Support

The service is configured for GPU acceleration. Ensure:
- NVIDIA GPU with CUDA support
- nvidia-docker2 runtime installed
- Docker compose with GPU support enabled

## Environment Variables

- `OLLAMA_HOST`: Default `0.0.0.0:11434`

## Integration

Other services connect via:
```
http://fks-ollama:11434
```

## Models

Recommended models:
- `llama3.2:3b` - Fast, good for development
- `bge-m3` - Embeddings model for RAG
- `qwen2.5:7b` - Good reasoning capabilities
