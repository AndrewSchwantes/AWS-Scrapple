set -e

pushd tests
python -m pytest --junitxml=junit/test-results.xml
popd