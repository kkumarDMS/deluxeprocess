#mvn clean install
export CONTAINER_ID="DeluxeProcess_1.0.0-SNAPSHOT"

export URL="http://localhost:8080/business-central/rest/controller/management/servers/default-kieserver/containers"


export USER="bamAdmin"

export PASSWORD="ibmpam1!"
export ALIAS="DeluxeProcess"
echo $URL

#curl -X PUT -u $USER:$PASSWORD "${URL}/kie-server/services/rest/server/containers/${CONTAINER_NAME}" -H 'Content-type: application/json'  --data @deployment.json
curl -X PUT -u $USER:$PASSWORD "${URL}/${CONTAINER_ID}" -H 'Content-type: application/json'  --data @deployment.json