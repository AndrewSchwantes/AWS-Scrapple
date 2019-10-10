#!/usr/bin/env python3

from aws_cdk import core

from kaark_stack import KaarkStack


app = core.App()
KaarkStack(app, "kaark-cdk-1", env={'region': 'us-east-2'})
KaarkStack(app, "kaark-cdk-2", env={'region': 'us-west-2'})

app.synth()
