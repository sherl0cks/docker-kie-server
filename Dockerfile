FROM sherl0cks/docker-bpms:6.3.0.GA

####### MAINTAINER ############
MAINTAINER "Justin Holmes" "jholmes@redhat.com"


####### REMOVE OTHER ARTIFACTS #######
RUN rm -rf /opt/jboss/jboss-eap-6.4/standalone/deployments/business-central.* \
 && rm -rf /opt/jboss/jboss-eap-6.4/standalone/deployments/dashbuilder.*
