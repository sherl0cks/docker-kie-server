FROM sherl0cks/docker-bpms:6.3.0.GA

####### MAINTAINER ############
MAINTAINER "Justin Holmes" "jholmes@redhat.com"


####### REMOVE OTHER ARTIFACTS #######
RUN rm -rf /opt/jboss/jboss-eap-6.4/standalone/deployments/business-central.* \
 && rm -rf /opt/jboss/jboss-eap-6.4/standalone/deployments/dashbuilder.* \
 && chmod -R a+rw /opt/jboss/jboss-eap-6.4/standalone \
 && chmod -R a+rw /opt/jboss/.m2
 
ENV M2_HOME /opt/jboss/.m2

####### OVERWRITE MAVEN SETTINGS ##### 
RUN curl https://raw.githubusercontent.com/rhtconsulting/labs-app-config-files/0a3d0b4f3a499d2f9eb3d74e60930816897d2ed7/fsi-settings.xml > /opt/jboss/.m2/settings.xml
