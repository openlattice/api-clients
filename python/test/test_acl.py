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
from openlattice.models.acl import Acl  # noqa: E501
from openlattice.rest import ApiException

class TestAcl(unittest.TestCase):
    """Acl unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional):
        """Test Acl
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # model = openlattice.models.acl.Acl()  # noqa: E501
        if include_optional :
            return Acl(
                acl_key = [
                    '0'
                    ], 
                aces = [
                    openlattice.models.ace.Ace(
                        principal = openlattice.models.principal.Principal(
                            type = '0', 
                            id = '0', ), 
                        permissions = [
                            '0'
                            ], )
                    ]
            )
        else :
            return Acl(
        )

    def testAcl(self):
        """Test Acl"""
        inst_req_only = self.make_instance(include_optional=False)
        inst_req_and_optional = self.make_instance(include_optional=True)


if __name__ == '__main__':
    unittest.main()
