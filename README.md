# Spring React Monolith Template

---

## Overview

This project serves as a foundational template for developing robust applications. It integrates a variety of modern technologies to facilitate secure, efficient, and scalable web solutions. The architecture is designed to streamline the development process for future projects.

## Technologies Used

### Backend
- **Lombok**: Simplifies Java code by reducing boilerplate.
- **Spring Web**: Provides a framework for building web applications.
- **GraphQL**: Enables flexible and efficient data querying.
- **Spring Data JDBC**: Facilitates data access using JDBC Repository against relational database.
- **PostgreSQL**: A powerful relational database management system.
- **Flyway**: Manages database migrations and versioning.
- **Testcontainers**: Supports integration testing with containerized environments.

### Frontend
- **React**: A JavaScript library for building user interfaces.
- **Bootstrap**: A framework for responsive design and styling.

### Build Tool
- **Maven**: Utilizes the `frontend-maven-plugin` from `com.github.eirslett` for managing frontend dependencies.

## Key Features

- **Role-Based Security**: Implements a robust security model where each user role is associated with specific URLs, ensuring controlled access to resources.
- **GraphQL Communication**: Facilitates seamless interaction between the frontend and backend, allowing for efficient data retrieval and manipulation.
- **JDBC Repository**: Simplifies database interactions by providing a higher-level abstraction.

---

## License

[Apache License](https://www.apache.org/licenses/LICENSE-2.0)
