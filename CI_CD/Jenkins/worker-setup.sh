
#!/bin/bash
echo "Setting up Jenkins worker node..."

# Install dependencies
sudo apt update && sudo apt install -y openjdk-11-jdk git docker.io

# Create a directory for the Jenkins agent
mkdir -p /home/jenkins/agent
cd /home/jenkins/agent

# Download the agent JAR from Jenkins master
wget http://<JENKINS_SERVER>:8080/jnlpJars/agent.jar

# Run the agent with the secret and master URL
java -jar agent.jar -jnlpUrl http://<JENKINS_SERVER>:8080/computer/<AGENT_NAME>/slave-agent.jnlp -secret <AGENT_SECRET> -workDir "/home/jenkins/agent"
