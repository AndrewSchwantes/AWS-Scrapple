set -e

mkdir -p ./target

cp --parents ./app/src/**/*.py ./target
cp ./app/src/*.py ./target/app/src

cp --parents ./infra/cdk/src/**/*.py ./target
cp -r ./infra/cdk/src/*.py ./target/infra/cdk/src
cp ./infra/cdk/*.json ./target/infra/cdk
cp ./infra/cdk/*.txt ./target/infra/cdk
cp ./infra/cdk/app.py ./target/infra/cdk

cp -r ./dependencies/* ./target/app/