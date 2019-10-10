set -e
export AWS_DEFAULT_REGION=us-east-1

cdk synth --output target --json true