
#!/bin/bash
echo "Deploying to Staging Environment..."
docker-compose -f docker-compose.staging.yml up -d
