# CTAS Developer Instructions

## Database Setup Package

This repository contains the complete database infrastructure setup for the Convergent Threat Analysis System (CTAS). The setup includes MongoDB, Neo4j, PostgreSQL, Elasticsearch, and Kafka configurations for both development and production environments.

### Quick Start

```bash
# Clone the repository
git clone <repository-url>
cd database_setup

# Copy environment configuration
cp .env.example .env

# Start development environment
docker-compose up -d

# Verify setup
./scripts/verify-connections.sh
```

### Directory Structure

```
database_setup/
├── docker/              # Docker Compose files
├── k8s/                 # Kubernetes manifests
├── schemas/            # Database schemas
├── scripts/            # Setup scripts
└── init-scripts/       # Database initialization
```

### Prerequisites

- Docker & Docker Compose
- Kubernetes cluster (for production)
- Helm 3.x
- kubectl configured

### Documentation

- [Detailed Setup Guide](database_setup/DETAILED_SETUP.md)
- [Developer Instructions](database_setup/DEVELOPER_INSTRUCTIONS.md)
- [Connection Details](database_setup/CONNECTION_STRINGS.md)

### Database Components

1. **MongoDB**
   - POLE (Person, Object, Location, Event) schema
   - 3-node replica set
   - 50GB storage per node

2. **Neo4j**
   - Graph relationships
   - 3-node enterprise cluster
   - 100GB storage per node

3. **PostgreSQL**
   - PostGIS extension for geospatial data
   - 3-node cluster
   - 50GB storage per node

4. **Elasticsearch**
   - Full-text search capabilities
   - 3-node cluster
   - 100GB storage per node

5. **Apache Kafka**
   - Event streaming platform
   - 3-broker cluster
   - 50GB storage per broker

### Support

For questions or issues, please contact the owner through Upwork. 
