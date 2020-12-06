#!/usr/bin/env bash -x

unset FEED_NAME
unset URL

REPO_ID=$1
FRIENDLY_NAME=$2
FEED_DESCRIPTION=$3
FEED_NOTE=$4
PULP_PATH=/etc/pulp
FEED_KEY=${PATH_PATH}/RedHatCertificates/latest.pem
FEED_CRT=${PATH_PATH}/RedHatCertificates/latest.pem
FEED_CA_CRT=/etc/rhsm/ca/<cert>.pem
URL=$5
SSL_BOOL=true
SERVE_HTTP_BOOL=true
SERVE_HTTPS_BOOL=true
RELATIVE_URL=$6
PROXY_HOST=<redacted>
PROXY_PORT=<redacted>
GENERATE_SQLITE_BOOL=true

pulp-admin rpm repo create --repo-id=${REPO_ID} \
	--display-name=${FRIENDLY_NAME}
	--description=${FEED_DESCRIPTION}
	--note=${FEED_NOTE}
	--feed=${URL} \
	--feed-key=${FEED_KEY} \
	--feed-cert=${FEED_CRT} \
	--feed-ca-crt=${FEED_CA_CRT} \
	--relative-url=${RELATIVE_URL} \
	--verify-feed-ssl=${SSL_BOOL} \
	--proxy-host=${PROXY_HOST} \
	--proxy-port=${PROXY_PORT} \
	--serve-http=${SERVE_HTTP_BOOL} \
	--serve-https=${SERVE_HTTPS_BOOL} \
	--generate-sqlite=${GENERATE_SQLITE_BOOL}

echo "${USER}, the ${FRIENDLY_NAME} has now been created"
