#!/bin/bash
set -ex
echo $DB_CLUSTER_NAME

# Copy in pip.conf file
cp /dbfs/databricks/scripts/pip.conf /etc/pip.conf

# Optional cscrootcerts.crt path
export CERT_PATH="/Volumes/prd_dash_config/common/init_scripts/src/cscrootcert.crt"

URL=https://raw.githubusercontent.com/Defra-Data-Science-Centre-of-Excellence/aljk-init-scripts/main/src
wget $URL/update.sh -O- | bash  -ex
wget $URL/base_libs.sh -O- | bash  -ex
if [[ "$DB_CLUSTER_NAME" == *"RStu"* ]]; then  # If RStu in cluster name
  wget -qO- $URL/r_installs.R | Rscript -
fi
if [[ "$DB_CLUSTER_NAME" == *"Geo"* ]]; then  # If Geo in cluster name
  wget $URL/sedona.sh -O- | bash -ex
  wget $URL/mosaic.sh -O- | bash -ex
fi