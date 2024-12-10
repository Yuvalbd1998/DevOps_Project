
#!/bin/bash
# Simulated artifact management using local storage
ARTIFACT_DIR="./artifacts"
mkdir -p $ARTIFACT_DIR

function store_artifact {
    echo "Storing artifact: $1"
    cp $1 $ARTIFACT_DIR
}

function list_artifacts {
    echo "Artifacts in storage:"
    ls $ARTIFACT_DIR
}
