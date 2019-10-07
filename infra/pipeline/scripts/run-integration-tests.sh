set -e

ls

pushd app
python -m pytest -m "integration" -s test --junitxml=integration/test-results.xml --ignore=target
popd