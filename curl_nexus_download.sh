NEXUS_URL="http://localhost:8082/nexus/content/repositories/"
REPOSITORY_ID="snapshots"
GROUP_ID="com.mycompany"
ARTIFACT_ID="demo"
VERSION="1.0-SNAPSHOT"
DATE="1.0-20190418.093348-1"
DESTINATION_DIR="/home/U597989"

GROUP_ID_URL=$(echo "${GROUP_ID}" | sed "s/\./\//g")
ARTIFACT_URL="${NEXUS_URL}/${REPOSITORY_ID}/${GROUP_ID_URL}/${ARTIFACT_ID}/${VERSION}"


# Download the jar file from Nexus
LATEST_ARTIFACT_URL="${ARTIFACT_URL}/${ARTIFACT_ID}-${VERSION}.jar"

Download
http://localhost:8082/nexus/content/repositories//snapshots/com/mycompany/demo/1.0-SNAPSHOT/demo-1.0-SNAPSHOT.jar 
to /home/U597989
echo "Download ${LATEST_ARTIFACT_URL} to ${DESTINATION_DIR}"
curl -o "${DESTINATION_DIR}/${ARTIFACT_ID}-${VERSION}.jar" "${LATEST_ARTIFACT_URL}"
