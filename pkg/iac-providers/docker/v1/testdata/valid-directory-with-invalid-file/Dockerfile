FROM runatlantis/atlantis:v0.18.4
ENV DEFAULT_TERRASCAN_VERSION=1.5.1
ENV PLANFILE tfplan
ADD setup.sh terrascan.sh launch-atlantis.sh entrypoint.sh /usr/local/bin/
RUN mkdir -p /etc/atlantis/ && \
    chmod +x /usr/local/bin/*.sh && \
    /usr/local/bin/setup.sh
ADD terrascan-workflow.yaml /etc/atlantis/workflow.yaml
USER atlantis
RUN terrascan init
ENTRYPOINT ["/bin/bash", "entrypoint.sh"]
Typo h
CMD ["server"]
