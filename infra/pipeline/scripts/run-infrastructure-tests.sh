set -e

pushd infra/cdk
python -m pytest --junitxml=junit/test-results.xml --ignore=target
popd