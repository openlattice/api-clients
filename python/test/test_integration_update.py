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
from openlattice.models.integration_update import IntegrationUpdate  # noqa: E501
from openlattice.rest import ApiException

class TestIntegrationUpdate(unittest.TestCase):
    """IntegrationUpdate unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional):
        """Test IntegrationUpdate
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # model = openlattice.models.integration_update.IntegrationUpdate()  # noqa: E501
        if include_optional :
            return IntegrationUpdate(
                environment = 'PROD_INTEGRATION', 
                s3_bucket = '0', 
                contacts = [
                    '0'
                    ], 
                organization_id = '0', 
                max_connections = 56, 
                callback_urls = [
                    '0'
                    ], 
                flight_plan_parameters = {
                    'key' : openlattice.models.flight_plan_parameters_update.FlightPlanParametersUpdate(
                        sql = '0', 
                        src = {
                            'key' : '0'
                            }, 
                        src_primary_key_columns = [
                            '0'
                            ], 
                        path = '0', )
                    }
            )
        else :
            return IntegrationUpdate(
        )

    def testIntegrationUpdate(self):
        """Test IntegrationUpdate"""
        inst_req_only = self.make_instance(include_optional=False)
        inst_req_and_optional = self.make_instance(include_optional=True)


if __name__ == '__main__':
    unittest.main()
