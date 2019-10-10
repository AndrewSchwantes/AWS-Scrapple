set -e

npm install

# Install build dependencies
sudo npm install -g aws-cdk@1.6.0

python -m pip install -r infra/cdk/requirements.txt
