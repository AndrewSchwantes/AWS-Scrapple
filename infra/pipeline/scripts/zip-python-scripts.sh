set -e

pushd target/app
zip -r9 ../enrichment_lambda.zip ./*
popd