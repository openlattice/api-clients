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
from openlattice.models.data_set_column_metadata import DataSetColumnMetadata  # noqa: E501
from openlattice.rest import ApiException

class TestDataSetColumnMetadata(unittest.TestCase):
    """DataSetColumnMetadata unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional):
        """Test DataSetColumnMetadata
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # model = openlattice.models.data_set_column_metadata.DataSetColumnMetadata()  # noqa: E501
        if include_optional :
            return DataSetColumnMetadata(
                id = '0', 
                data_set_id = '0', 
                name = '0', 
                organization_id = '0', 
                data_type = '0', 
                metadata = openlattice.models.data_metadata.DataMetadata(
                    title = '0', 
                    description = '0', 
                    contacts = [
                        '0'
                        ], 
                    flags = [
                        '0'
                        ], 
                    metadata = [
                        '0'
                        ], ), 
                acl_key = [
                    '0'
                    ]
            )
        else :
            return DataSetColumnMetadata(
        )

    def testDataSetColumnMetadata(self):
        """Test DataSetColumnMetadata"""
        inst_req_only = self.make_instance(include_optional=False)
        inst_req_and_optional = self.make_instance(include_optional=True)


if __name__ == '__main__':
    unittest.main()