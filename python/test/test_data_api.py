# coding: utf-8

"""
    OpenLattice API

    OpenLattice API  # noqa: E501

    OpenAPI spec version: 0.0.1
    Contact: support@openlattice.com
    Generated by: https://openapi-generator.tech
"""


from __future__ import absolute_import

import unittest

import openlattice
from openlattice.api.data_api import DataApi  # noqa: E501
from openlattice.rest import ApiException


class TestDataApi(unittest.TestCase):
    """DataApi unit test stubs"""

    def setUp(self):
        self.api = openlattice.api.data_api.DataApi()  # noqa: E501

    def tearDown(self):
        pass

    def test_clear_all_entities_from_entity_set(self):
        """Test case for clear_all_entities_from_entity_set

        Clears the Entity matching the given Entity id and all of its neighbor Entities  # noqa: E501
        """
        pass

    def test_clear_entity_set(self):
        """Test case for clear_entity_set

        Clears the data from a single entity set.  # noqa: E501
        """
        pass

    def test_create_entities(self):
        """Test case for create_entities

        Creates a list of new entities by UUID's  # noqa: E501
        """
        pass

    def test_get_entity_set_size(self):
        """Test case for get_entity_set_size

        Gets the number of entities in an entity set.  # noqa: E501
        """
        pass

    def test_load_entity_set_data(self):
        """Test case for load_entity_set_data

        Gets an iterable containing the entity data, using property type FQNs as key  # noqa: E501
        """
        pass


if __name__ == '__main__':
    unittest.main()
