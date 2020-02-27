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
import datetime

import openlattice
from openlattice.models.auth0user_basic import Auth0userBasic  # noqa: E501
from openlattice.rest import ApiException

class TestAuth0userBasic(unittest.TestCase):
    """Auth0userBasic unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional):
        """Test Auth0userBasic
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # model = openlattice.models.auth0user_basic.Auth0userBasic()  # noqa: E501
        if include_optional :
            return Auth0userBasic(
                user_id = '0', 
                email = '0', 
                nickname = '0', 
                username = '0', 
                roles = [
                    '0'
                    ], 
                com_openlattice_organization = [
                    '0'
                    ]
            )
        else :
            return Auth0userBasic(
        )

    def testAuth0userBasic(self):
        """Test Auth0userBasic"""
        inst_req_only = self.make_instance(include_optional=False)
        inst_req_and_optional = self.make_instance(include_optional=True)


if __name__ == '__main__':
    unittest.main()
