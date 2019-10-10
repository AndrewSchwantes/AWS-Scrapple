import unittest
from aws_cdk import core
from infra.cdk.kaark_construct import KaarkConstruct


class TestKaarkConstruct(unittest.TestCase):

    def setUp(self):
        self.app = core.App()
        self.stack = core.Stack(self.app, "TestStack")

    def test_num_buckets(self):
        num_buckets = 10
        kaark = KaarkConstruct(self.stack, "Test1", num_buckets)
        assert len(kaark.buckets) == num_buckets
