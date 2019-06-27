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

    def test_create_associations(self):
        """Test case for create_associations

        Creates a new set of associations.  # noqa: E501
        """
        pass

    def test_delete_all_entities_from_entity_set(self):
        """Test case for delete_all_entities_from_entity_set

        Clears the Entity matching the given Entity id and all of its neighbor Entities  # noqa: E501
        """
        pass

    def test_delete_entities(self):
        """Test case for delete_entities

        Deletes multiple entities from an entity set.  # noqa: E501
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

    def test_load_filtered_entity_set_data(self):
        """Test case for load_filtered_entity_set_data

        Gets a list of entities by UUIDs  # noqa: E501
        """
        pass


if __name__ == '__main__':
    unittest.main()
