set -e

mkdir -p ./dependencies
python -m pip install --target=./dependencies -r app/requirements.txt --ignore-installed