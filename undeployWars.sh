#!/bin/bash

rm -f ${LIBERTY_HOME}/usr/servers/defaultServer/dropins/*.war
rm -f ${WILDFLY_HOME}/standalone/deployments/*.war
rm -f ${PAYARA_HOME}/glassfish/domains/domain1/autodeploy/*.war
rm -f ${TOMEE_HOME}/webapps/*.war

echo "java war files removed from all application servers"
exit 0
