set -e

pushd infra/cdk
python -m pytest -s --junitxml=junit/test-results.xml --ignore=target
popd