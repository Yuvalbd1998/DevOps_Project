
#!/bin/bash
echo "Deploying to Production Environment..."
docker-compose -f docker-compose.prod.yml up -d
