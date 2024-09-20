
# Docker Flask App Deployment

This project demonstrates how to deploy a simple Python Flask application using Docker. The Flask app is containerized and can be run easily in any environment with Docker.

## Repository: [docker_flask_app_deploy](https://github.com/shubham-murtadak/docker_flask_app_deploy.git)

### Prerequisites

To run this project, ensure you have the following installed:

- Docker
- Python 3.11.3 or higher
- Virtual environment (optional)

### Steps to Run the Flask Application in Docker

1. **Clone the repository**:
   ```bash
   git clone https://github.com/shubham-murtadak/docker_flask_app_deploy.git
   ```

2. **Navigate to the project directory**:
   ```bash
   cd docker_flask_app_deploy
   ```

3. **Create and activate a virtual environment (optional)**:
   ```bash
   python -m venv DOCKenv
   .\DOCKenv\Scripts\activate  # For Windows
   ```

4. **Install dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

5. **Build the Docker image**:
   ```bash
   docker build -t shubham560/hey-python-flask:0.0.1.RELEASE .
   ```

6. **Run the Docker container**:
   ```bash
   docker container run -d -p 5000:5000 shubham560/hey-python-flask:0.0.1.RELEASE
   ```

7. **Access the Flask application**:
   Open your browser and navigate to `http://localhost:5000` to see the running Flask app.

### Stopping the Docker Container

To stop the running container, use the following command:

```bash
docker container stop <container_id>
```

Replace `<container_id>` with the actual ID of your container.

### Folder Structure

```
docker_flask_app_deploy/
│
├── my_flask.py          # Main Flask application file
├── Dockerfile           # Docker configuration file
├── requirements.txt     # Python dependencies
└── README.md            # Project documentation
```

### Dockerfile Explanation

```Dockerfile
FROM python:3.11.3

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 5000

CMD python ./my_flask.py
```

- **FROM python:3.11.3**: Specifies the base image (Python 3.11.3) for the container.
- **WORKDIR /app**: Sets the working directory inside the container to `/app`.
- **COPY . /app**: Copies all the files from your local project directory into the `/app` directory inside the container.
- **RUN pip install -r requirements.txt**: Installs the required Python packages.
- **EXPOSE 5000**: Exposes port 5000 for the Flask app.
- **CMD python ./my_flask.py**: Runs the Flask app when the container starts.
