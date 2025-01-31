set -e

sudo npm install
python -m pip install awscli
git config --global --add url."https://x-access-token:$1@github.com/".insteadOf "https://github.com/"
python -m pip install -r ./infra/cdk/requirements.txt
python -m pip install aws-cdk.core
python -m pip install aws-cdk.aws_s3
python -m pip install aws-cdk.aws_lambda