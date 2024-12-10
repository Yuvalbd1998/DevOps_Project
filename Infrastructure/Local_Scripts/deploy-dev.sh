
#!/bin/bash
echo "Deploying to Development Environment..."
docker-compose -f docker-compose.dev.yml up -d
