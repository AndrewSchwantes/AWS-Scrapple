from aws_cdk import (
    aws_iam as iam,
    aws_sqs as sqs,
    aws_sns as sns,
    aws_sns_subscriptions as subs,
    core
)

from .kaark_construct import KaarkConstruct


class KaarkStack(core.Stack):

    def __init__(self, scope: core.Construct, id: str, **kwargs) -> None:
        super().__init__(scope, id, **kwargs)

        queue = sqs.Queue(
            self, "MyFirstQueue",
            visibility_timeout=core.Duration.seconds(300),
        )

        topic = sns.Topic(
            self, "MyFirstTopic",
            display_name="My First Topic"
        )

        topic.add_subscription(subs.SqsSubscription(queue))

        kaark = KaarkConstruct(self, "MyKaarkConstruct", num_buckets=4)
        user = iam.User(self, "MyUser")
        kaark.grant_read(user)
