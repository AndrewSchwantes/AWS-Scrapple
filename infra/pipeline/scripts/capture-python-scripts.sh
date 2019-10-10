set -e

mkdir -p ./target

cp --parents ./infra/cdk/**/*.py ./target
cp -r ./infra/cdk/*.py ./target/infra/cdk
cp ./infra/cdk/*.json ./target/infra/cdk
cp ./infra/cdk/*.txt ./target/infra/cdk
cp ./infra/cdk/app.py ./target/infra/cdk
