#!/usr/bin/env python3

from aws_cdk import core

from kaark_stack import MyStack


app = core.App()
MyStack(app, "kaark-cdk-1", env={'region': 'us-east-2'})
MyStack(app, "kaark-cdk-2", env={'region': 'us-west-2'})

app.synth()
