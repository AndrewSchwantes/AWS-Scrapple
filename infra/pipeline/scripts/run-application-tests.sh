set -e

pushd app
python -m pytest -m "not integration" -s test --junitxml=junit/test-results.xml --ignore=target
popd