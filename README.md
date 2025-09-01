# api-to-do-dotnet

RESTful API using ASP.NET Core for task management with JWT authentication.

> 🚧 **Development in Progress**  
> This branch contains the latest features and ongoing developments.

## Features

- [ ] User authentication with JWT

- [ ] CRUD operations for tasks

- [ ] Task tagging and status filtering

- [ ] Automatic API documentation with Swagger

- [ ] Dockerized setup for easy development and deployment

## Technologies Used

- ASP.NET Core 8.0
- Entity Framework Core
- SQLite / PostgreSQL
- JWT Authentication
- Swagger / OpenAPI
- Docker & Docker Compose

## Getting Started

### Prerequisites

- .NET 8.0 SDK
- Docker (optional)

### Installation and Running Locally

```bash
git clone https://github.com/your-username/api-to-do-dotnet.git
git checkout develop
cd api-to-do-dotnet
dotnet restore
dotnet run
```

### Running with Docker

```bash
docker-compose up --build
```

API will be available at http://localhost:5000

## API Endpoints

### Authentication

- `POST /api/auth/register` - Register a new user
- `POST /api/auth/login` - Login and obtain JWT token

### Tasks

- `GET /api/todos` - List all tasks
- `POST /api/todos` - Create a new task
- `PUT /api/todos/{id}` - Update a task
- `DELETE /api/todos/{id}` - Delete a task

## Testing

```bash
dotnet test
```

Test suites are being expanded and improved regularly.

## Documentation

- Swagger UI is available at `/swagger` to explore API endpoints interactively.

## Deployment Plan

- Code in this branch is regularly merged into `staging` after feature stabilizations and reviews.
- Continuous Integration and automated tests ensure quality before merges.

## Contributing

Please fork the repo and submit pull requests against the `develop` branch.

## License

MIT License

## Contact

Vinícius Maciel Leite  
Email: viniciusmacielleite@gmail.com  
GitHub: [viniciusmleite](https://github.com/viniciusmleite)
