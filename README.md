# E-Commerce Full-Stack Project

This repository hosts a complete e-commerce web application composed of two main submodules:

1. **Next-Frontend**: A modern, responsive portfolio project built with [Next.js](https://nextjs.org), [React](https://reactjs.org) and TypeScript. It features full internationalization (i18n) support, efficient app and page routing, and compatibility with modern browsers including support for both left-to-right (LTR) and right-to-left (RTL) layouts.

2. **Backend Server**: A robust Node.js and Express server, written in TypeScript, that provides both REST API endpoints and a GraphQL API for flexible data retrieval. It includes modular routing, database integration, Redis caching for performance optimization, and DeepL translation API integration for multilingual support.

## Key Features

### Performance & Scalability

- **Redis Caching**: High-performance caching layer that significantly improves response times (93% faster for cached responses)
- **Docker Orchestration**: Multi-service containerization with persistent data volumes
- **Polyglot Persistence**:
  - MySQL 8 with UTF8MB4 character set for primary data storage
  - MongoDB for translation data and multilingual content storage

### Internationalization & Translation

- **Frontend i18n**: Full internationalization support with multiple language files
- **DeepL Translation API**: Automatic text translation service supporting 30+ languages
- **RTL/LTR Support**: Bidirectional text support for global accessibility

### API Capabilities

- **RESTful APIs**: Comprehensive endpoints for e-commerce functionality
- **GraphQL Integration**: Flexible data retrieval for complex frontend requirements
- **Caching Strategy**: Smart caching with different TTL values based on data volatility

## Orchestration with Docker Compose

The entire project is containerized using Docker Compose. The Docker Compose configuration manages the following services:

- **Frontend Service**: Runs the Next.js application.
- **Backend Service**: Runs the Node.js/Express server with Redis caching and DeepL translation.
- **MySQL Database Service**: A MySQL 8 database used for persisting core application data with UTF8MB4 character set and Unicode collation.
- **MongoDB Service**: Document database used for storing translation data and multilingual content.
- **Redis Service**: In-memory data store for high-performance caching and session management.

Additionally, Docker volumes are utilized to persist database data and Redis cache between container restarts, ensuring data durability and optimal performance.

## Docker Volumes

The Docker Compose configuration defines the following volumes to ensure data persistence and smooth operation of the application across restarts:

- **db_data**: Persists the MySQL 8 database files (`/var/lib/mysql`), ensuring that all data, tables, and migration history remain intact between container recreations.

- **mongodb_data**: Persists MongoDB data (`/data/db`), maintaining translation collections and multilingual content across container restarts.

- **server_public**: Stores the backend server's public assets (`/app/public`), including uploaded images and static files that need to be preserved across container restarts.

- **redis_data**: Persists Redis cache data (`/data`), maintaining cached responses and session data across container restarts for optimal performance.

## Database Setup

### MySQL

Database migrations (located in the `migrations/` folder) are used to initialize and seed the MySQL database. This ensures that the relational database schema is kept in sync with the application requirements.

### MongoDB

MongoDB initialization scripts (located in the `mongo-init/` folder) are used to set up translation collections and seed initial multilingual content.

## How to Get Started

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/feldib/E-Commerce-Full-Stack-NextJs-NodeJS---Express.git
   cd E-Commerce-Full-Stack-NextJs-NodeJS---Express
   ```

2. **Docker Compose**:

   Use Docker Compose to build and start all services:

   ```bash
   docker-compose up --build
   ```

3. **Manual Setup** (if not using Docker):

   - **Frontend**: Navigate to `next-frontend` and run `npm install` followed by `npm run dev`.
   - **Backend**: Navigate to `server` and run `npm install` followed by `npm run dev`.
   - **Databases**:
     - Set up MySQL as per the configurations in the `.env` files and run the migrations in the `migrations/` folder.
     - Set up MongoDB and run the initialization scripts in the `mongo-init/` folder.

## Technologies Used

- **Frontend**: Next.js, React, TypeScript, i18n
- **Backend**: Node.js, Express, TypeScript, REST & GraphQL APIs
- **Databases**:
  - MySQL 8 with UTF8MB4 character set and Unicode collation for primary data storage
  - MongoDB for storing translation data and multilingual content
- **Caching**: Redis 7 for high-performance data caching and session management
- **Translation**: DeepL API for automatic text translation across 30+ languages
- **Containerization**: Docker Compose for multi-service orchestration and volume management

---

For more details on each submodule, please refer to the README files located in the `next-frontend` and `server` directories.
