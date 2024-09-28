# Students-Docker Project

This project is structured to manage a **database**, **backend**, and **frontend** using Docker containers. Follow the steps below to deploy the project.

## Step 1: Database Setup

In this step, we configure and deploy the database using Docker.

- **Dockerfile**: `Students-Docker/DB/Dockerfile`
- **SQL Initialization**: `Students-Docker/DB/init-db.sql`

### Instructions:
1. Navigate to the database directory:
   ```bash
   cd Students-Docker/DB
   ```
2. Build the Docker image:
   ```bash
   docker build -t students-db .
   ```
3. Run the database container:
   ```bash
   docker run -d -p 3306:3306 --name students-db students-db
   ```

## Step 2: Backend Setup

This step sets up the backend service that interacts with the database.

- **Dockerfile**: `Students-Docker/BE/Dockerfile`
- Ensure all necessary files are present in this directory.
- Configure the database endpoint in the backend configuration file.

### Instructions:
1. Navigate to the backend directory:
   ```bash
   cd Students-Docker/BE
   ```
2. Build the Docker image:
   ```bash
   docker build -t students-backend .
   ```
3. Run the backend container, making sure to link it to the database container:
   ```bash
   docker run -d -p 8080:8080 --name students-backend --link students-db students-backend
   ```

## Step 3: Frontend Setup

This step sets up the frontend that interacts with the backend service.

- **Dockerfile**: `Students-Docker/FE/Dockerfile`
- Ensure all necessary files are present in this directory.
- Configure the backend endpoint in the `index.html` file.

### Instructions:
1. Navigate to the frontend directory:
   ```bash
   cd Students-Docker/FE
   ```
2. Build the Docker image:
   ```bash
   docker build -t students-frontend .
   ```
3. Run the frontend container:
   ```bash
   docker run -d -p 80:80 --name students-frontend students-frontend
   ```

## Conclusion

By following these steps, you'll have a complete setup of the database, backend, and frontend services running in Docker containers. Make sure to configure the respective endpoints for the backend and frontend for full functionality.