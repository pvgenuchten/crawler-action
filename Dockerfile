FROM pvgenuchten/geodatacrawler:1.3.1

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]