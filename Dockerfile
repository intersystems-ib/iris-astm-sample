FROM store/intersystems/irishealth-community:2021.1.0.215.0

# create base dirs
USER root
RUN mkdir -p /opt/astm
RUN chown -R 51773:52773 /opt/astm

USER ${ISC_PACKAGE_MGRUSER}

COPY --chown=$ISC_PACKAGE_MGRUSER:$ISC_PACKAGE_IRISGROUP irissession.sh /
RUN chmod +x /irissession.sh

# create required db dirs
RUN mkdir -p /opt/astm/db/HOST-DATA /opt/astm/db/HOST-CODE
RUN mkdir -p /opt/astm/db/INSTRUMENT-DATA /opt/astm/db/INSTRUMENT-CODE

# copy source code
COPY --chown=$ISC_PACKAGE_MGRUSER:$ISC_PACKAGE_IRISGROUP src /tmp/src

SHELL ["/irissession.sh"]

RUN \
  zn "USER" \
  # load installer
  do $SYSTEM.OBJ.Load("/tmp/src/ASTM/Installer.cls", "ck") \
  # run installer
  set sc = ##class(ASTM.Installer).Run(.vars)

# bringing the standard shell back
SHELL ["/bin/bash", "-c"]