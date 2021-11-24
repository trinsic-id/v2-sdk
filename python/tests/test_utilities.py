import unittest

from trinsic.trinsic_util import create_channel


class TestUtilities(unittest.IsolatedAsyncioTestCase):
    url_params = [
        ("http://localhost:5000", False),
        ("https://localhost:5000", False),
        ("http://20.75.134.127:80", False),
        ("http://20.75.134.127", True),
        ("http://localhost", True),
        ("localhost:5000", True),
        ("", True),
    ]

    async def test_url_parse(self):
        for url, throws_exception in self.url_params:
            with self.subTest(f"url={url} throws={throws_exception}"):
                try:
                    create_channel(url)
                    if throws_exception:
                        assert False
                except:
                    if not throws_exception:
                        raise
