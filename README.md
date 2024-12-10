
# DevOps Project: Jenkins CI/CD with Worker Node and Nightly Release

## Overview
This project demonstrates a DevOps pipeline using Jenkins. It includes:
- A simple Python "Hello, World!" application.
- CI/CD pipelines configured in Jenkins.
- A worker node for distributed builds.
- Nightly release automation using Jenkins.

## Setup Instructions

### Clone the Repository
1. Clone this repository to your local machine:
   ```bash
   git clone https://github.com/<your-username>/DevOps_Project.git
   cd DevOps_Project
   ```

### Run the Setup Script
1. Run the following commands to execute the setup script:
   ```bash
   chmod +x setup.sh
   ./setup.sh
   ```
2. **Important**: After the script completes, log out and log back in to apply the Docker group changes.

### Start Jenkins and Worker Node
1. Navigate to the `CI_CD/Jenkins` folder:
   ```bash
   cd CI_CD/Jenkins
   ```
2. Start Jenkins and its worker node using Docker Compose:
   ```bash
   docker-compose up -d
   ```
3. Open Jenkins in your browser: [http://localhost:8080](http://localhost:8080).

### Unlock Jenkins
1. Find the initial admin password:
   ```bash
   docker exec -it <jenkins-container-id> cat /var/jenkins_home/secrets/initialAdminPassword
   ```
2. Enter this password in Jenkins and complete the setup wizard.

### Verify Setup
1. Run the verification script to ensure Jenkins and the worker node are working:
   ```bash
   bash verify-setup.sh
   ```
2. This script checks:
   - Jenkins is running.
   - The worker node is connected.
   - Pipelines are functional.

### Trigger the Pipeline
1. The `HelloWorldPipeline` is pre-configured.
2. Trigger it manually in Jenkins or wait for the nightly release cron to run automatically.

### Application Access
- Once the pipeline runs successfully, the application will be available at [http://localhost:8000](http://localhost:8000).

## Additional Notes
- Admin credentials: `admin / admin123` (change them in production environments).
- Worker node name: `worker-1`.

### Troubleshooting
- **Jenkins not running**: Check Docker logs with:
  ```bash
  docker logs <jenkins-container-id>
  ```
- **Worker node not connecting**: Verify the `JENKINS_SECRET` and `JENKINS_URL` in the `docker-compose.yml`.

## License
This project is licensed under MIT License.
