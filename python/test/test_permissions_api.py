# coding: utf-8

"""
    OpenLattice API

    OpenLattice API  # noqa: E501

    The version of the OpenAPI document: 0.0.1
    Contact: support@openlattice.com
    Generated by: https://openapi-generator.tech
"""


from __future__ import absolute_import

import unittest

import openlattice
from openlattice.api.permissions_api import PermissionsApi  # noqa: E501
from openlattice.rest import ApiException


class TestPermissionsApi(unittest.TestCase):
    """PermissionsApi unit test stubs"""

    def setUp(self):
        self.api = openlattice.api.permissions_api.PermissionsApi()  # noqa: E501

    def tearDown(self):
        pass

    def test_get_acl(self):
        """Test case for get_acl

        Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.  # noqa: E501
        """
        pass

    def test_update_acl(self):
        """Test case for update_acl

        Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.  # noqa: E501
        """
        pass


if __name__ == '__main__':
    unittest.main()
