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
from openlattice.models.property_type import PropertyType  # noqa: E501
from openlattice.rest import ApiException

class TestPropertyType(unittest.TestCase):
    """PropertyType unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional):
        """Test PropertyType
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # model = openlattice.models.property_type.PropertyType()  # noqa: E501
        if include_optional :
            return PropertyType(
                title = '0', 
                id = '0', 
                type = openlattice.models.full_qualified_name.FullQualifiedName(
                    name = '0', 
                    namespace = '0', ), 
                description = '0', 
                schemas = [
                    openlattice.models.full_qualified_name.FullQualifiedName(
                        name = '0', 
                        namespace = '0', )
                    ], 
                datatype = 'Binary', 
                pii = True, 
                multi_valued = True, 
                analyzer = 'NONE', 
                enum_values = [
                    '0'
                    ], 
                index_type = 'BTREE'
            )
        else :
            return PropertyType(
        )

    def testPropertyType(self):
        """Test PropertyType"""
        inst_req_only = self.make_instance(include_optional=False)
        inst_req_and_optional = self.make_instance(include_optional=True)


if __name__ == '__main__':
    unittest.main()
