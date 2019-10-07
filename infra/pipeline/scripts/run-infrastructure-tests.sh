set -e

pushd infra/cdk
python -m pytest tests -s --junitxml=junit/test-results.xml --ignore=target
popd