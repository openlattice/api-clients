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
from openlattice.models.linking_feedback import LinkingFeedback  # noqa: E501
from openlattice.rest import ApiException

class TestLinkingFeedback(unittest.TestCase):
    """LinkingFeedback unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional):
        """Test LinkingFeedback
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # model = openlattice.models.linking_feedback.LinkingFeedback()  # noqa: E501
        if include_optional :
            return LinkingFeedback(
                linking_entity = openlattice.models.entity_data_key.EntityDataKey(
                    entity_set_id = '0', 
                    entity_key_id = '0', ), 
                link = [
                    openlattice.models.entity_data_key.EntityDataKey(
                        entity_set_id = '0', 
                        entity_key_id = '0', )
                    ], 
                unlink = [
                    openlattice.models.entity_data_key.EntityDataKey(
                        entity_set_id = '0', 
                        entity_key_id = '0', )
                    ]
            )
        else :
            return LinkingFeedback(
        )

    def testLinkingFeedback(self):
        """Test LinkingFeedback"""
        inst_req_only = self.make_instance(include_optional=False)
        inst_req_and_optional = self.make_instance(include_optional=True)


if __name__ == '__main__':
    unittest.main()
