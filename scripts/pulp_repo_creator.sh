#!/usr/bin/env bash -x

unset FEED_NAME
unset URL

REPO_ID=$1
FEED_KEY=
FEED_CRT=
FEED_CA=
URL=


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


