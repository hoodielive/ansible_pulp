#!/usr/bin/env bash -x

unset REPO_ID 
unset FRIENDLY_NAME
unset FEED_DESCRIPTION
unset FEED_NOTE
unset FEED_PATH
unset FEED_KEY
unset FEED_CRT
unset FEED_CA_CRT
unset PULP_PATH
unset URL
unset SSL_BOOL
unset SERVE_HTTP_BOOL
unset SERVE_HTTPS_BOOL
unset RELATIVE_URL
unset PROXY_HOST
unset PROXY_PORT
unset GENERATE_SQLITE_BOOL
unset CHECKSUM

REPO_ID=$1
FRIENDLY_NAME=$2
FEED_DESCRIPTION=$3
FEED_NOTE=$4
FEED_KEY=${PATH_PATH}/RedHatCertificates/latest.pem
FEED_CRT=${PATH_PATH}/RedHatCertificates/latest.pem
FEED_CA_CRT=/etc/rhsm/ca/<cert>.pem
PULP_PATH=/etc/pulp
FEED_URL=$5
SSL_BOOL=true
SERVE_HTTP_BOOL=true
SERVE_HTTPS_BOOL=true
RELATIVE_URL=$6
PROXY_HOST=<redacted>
PROXY_PORT=<redacted>
GENERATE_SQLITE_BOOL=true
CHECKSUM=sha256

pulp-admin rpm repo create \
  --repo-id=${REPO_ID} \
	--display-name=${FRIENDLY_NAME}
	--description=${FEED_DESCRIPTION}
	--note=${FEED_NOTE}
	--feed=${FEED_URL} \
	--feed-key=${FEED_KEY} \
	--feed-cert=${FEED_CRT} \
	--feed-ca-cert=${FEED_CA_CRT} \
	--relative-url=${RELATIVE_URL} \
	--verify-feed-ssl=${SSL_BOOL} \
	--proxy-host=${PROXY_HOST} \
	--proxy-port=${PROXY_PORT} \
	--serve-http=${SERVE_HTTP_BOOL} \
	--serve-https=${SERVE_HTTPS_BOOL} \
	--generate-sqlite=${GENERATE_SQLITE_BOOL} \
	--checksum-type=${CHECKSUM}

echo "${USER}, the ${FRIENDLY_NAME} has now been created"
