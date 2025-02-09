# ----------------------------------------------------------------------------
#
# Package	: node-redis-parser
# Version	: 3.0.0
# Source repo	: https://github.com/NodeRedis/node-redis-parser.git
# Tested on	: redhat/ubi9
# Maintainer	: Bharti Somra <bhartisomra34@gmail.com>
#
# Disclaimer: This script has been tested in root mode on given
# ==========  platform using the mentioned version of the package.
#             It may not work as expected with newer versions of the
#             package and/or distribution. In such case, please
#             contact "Maintainer" of this script.
#
# ----------------------------------------------------------------------------
#!/bin/bash

# Install dependencies
yum update -y
yum install -y git
yum module enable -y nodejs:18
yum install -y nodejs

git clone https://github.com/NodeRedis/node-redis-parser.git
cd node-redis-parser
npm install

#Run test
npm test