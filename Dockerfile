FROM droit/deploy-action:v1

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh
