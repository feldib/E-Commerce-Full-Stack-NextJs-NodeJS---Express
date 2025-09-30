# E-Commerce Full-Stack Project

This repository hosts a complete e-commerce web application composed of two main submodules:

1. **Next-Frontend**: A modern, responsive portfolio project built with [Next.js](https://nextjs.org), [React](https://reactjs.org) and TypeScript. It features full internationalization (i18n) support, efficient app and page routing, and compatibility with modern browsers including support for both left-to-right (LTR) and right-to-left (RTL) layouts.

2. **Backend Server**: A robust Node.js and Express server, written in TypeScript, that provides both REST API endpoints and a GraphQL API for flexible data retrieval. It includes modular routing, database integration, and is containerized for seamless deployment.

## Orchestration with Docker Compose

The entire project is containerized using Docker Compose. The Docker Compose configuration manages the following services:

- **Frontend Service**: Runs the Next.js application.
- **Backend Service**: Runs the Node.js/Express server.
- **Database Service**: A MySQL 8 database used for persisting application data with UTF8MB4 character set and Unicode collation.

Additionally, Docker volumes are utilized to persist database data between container restarts, ensuring data durability and ease of management.

## Docker Volumes

The Docker Compose configuration defines the following volumes to ensure data persistence and smooth operation of the application across restarts:

- **db_data**: Persists the MySQL 8 database files (`/var/lib/mysql`), ensuring that all data, tables, and migration history remain intact between container recreations.

- **server_public**: Stores the backend server's public assets (`/app/public`), including uploaded images and static files that need to be preserved across container restarts.

## Database Setup

Database migrations (located in the `migrations/` folder) are used to initialize and seed the database. This ensures that the database schema is kept in sync with the application requirements.

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
   - **Database**: Set up your relational database as per the configurations in the `.env` files and run the migrations in the `migrations/` folder.

## Technologies Used

- **Frontend**: Next.js, React, TypeScript, i18n
- **Backend**: Node.js, Express, TypeScript, REST & GraphQL APIs
- **Database**: MySQL 8 with UTF8MB4 character set and Unicode collation for robust data storage and multilingual support
- **Containerization**: Docker Compose for multi-service orchestration and volume management

---

For more details on each submodule, please refer to the README files located in the `next-frontend` and `server` directories.
