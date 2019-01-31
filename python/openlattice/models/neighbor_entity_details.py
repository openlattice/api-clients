# coding: utf-8

"""
    OpenLattice API

    OpenLattice API  # noqa: E501

    OpenAPI spec version: 0.0.1
    Contact: support@openlattice.com
    Generated by: https://openapi-generator.tech
"""


import pprint
import re  # noqa: F401

import six


class NeighborEntityDetails(object):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    """
    Attributes:
      openapi_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    openapi_types = {
        'association_entity_set': 'EntitySet',
        'association_details': 'NeighborDetails',
        'neighbor_entity_set': 'EntitySet',
        'neighbor_id': 'str',
        'neighbour_details': 'NeighborDetails'
    }

    attribute_map = {
        'association_entity_set': 'associationEntitySet',
        'association_details': 'associationDetails',
        'neighbor_entity_set': 'neighborEntitySet',
        'neighbor_id': 'neighborId',
        'neighbour_details': 'neighbourDetails'
    }

    def __init__(self, association_entity_set=None, association_details=None, neighbor_entity_set=None, neighbor_id=None, neighbour_details=None):  # noqa: E501
        """NeighborEntityDetails - a model defined in OpenAPI"""  # noqa: E501

        self._association_entity_set = None
        self._association_details = None
        self._neighbor_entity_set = None
        self._neighbor_id = None
        self._neighbour_details = None
        self.discriminator = None

        if association_entity_set is not None:
            self.association_entity_set = association_entity_set
        if association_details is not None:
            self.association_details = association_details
        if neighbor_entity_set is not None:
            self.neighbor_entity_set = neighbor_entity_set
        if neighbor_id is not None:
            self.neighbor_id = neighbor_id
        if neighbour_details is not None:
            self.neighbour_details = neighbour_details

    @property
    def association_entity_set(self):
        """Gets the association_entity_set of this NeighborEntityDetails.  # noqa: E501


        :return: The association_entity_set of this NeighborEntityDetails.  # noqa: E501
        :rtype: EntitySet
        """
        return self._association_entity_set

    @association_entity_set.setter
    def association_entity_set(self, association_entity_set):
        """Sets the association_entity_set of this NeighborEntityDetails.


        :param association_entity_set: The association_entity_set of this NeighborEntityDetails.  # noqa: E501
        :type: EntitySet
        """

        self._association_entity_set = association_entity_set

    @property
    def association_details(self):
        """Gets the association_details of this NeighborEntityDetails.  # noqa: E501


        :return: The association_details of this NeighborEntityDetails.  # noqa: E501
        :rtype: NeighborDetails
        """
        return self._association_details

    @association_details.setter
    def association_details(self, association_details):
        """Sets the association_details of this NeighborEntityDetails.


        :param association_details: The association_details of this NeighborEntityDetails.  # noqa: E501
        :type: NeighborDetails
        """

        self._association_details = association_details

    @property
    def neighbor_entity_set(self):
        """Gets the neighbor_entity_set of this NeighborEntityDetails.  # noqa: E501


        :return: The neighbor_entity_set of this NeighborEntityDetails.  # noqa: E501
        :rtype: EntitySet
        """
        return self._neighbor_entity_set

    @neighbor_entity_set.setter
    def neighbor_entity_set(self, neighbor_entity_set):
        """Sets the neighbor_entity_set of this NeighborEntityDetails.


        :param neighbor_entity_set: The neighbor_entity_set of this NeighborEntityDetails.  # noqa: E501
        :type: EntitySet
        """

        self._neighbor_entity_set = neighbor_entity_set

    @property
    def neighbor_id(self):
        """Gets the neighbor_id of this NeighborEntityDetails.  # noqa: E501


        :return: The neighbor_id of this NeighborEntityDetails.  # noqa: E501
        :rtype: str
        """
        return self._neighbor_id

    @neighbor_id.setter
    def neighbor_id(self, neighbor_id):
        """Sets the neighbor_id of this NeighborEntityDetails.


        :param neighbor_id: The neighbor_id of this NeighborEntityDetails.  # noqa: E501
        :type: str
        """

        self._neighbor_id = neighbor_id

    @property
    def neighbour_details(self):
        """Gets the neighbour_details of this NeighborEntityDetails.  # noqa: E501


        :return: The neighbour_details of this NeighborEntityDetails.  # noqa: E501
        :rtype: NeighborDetails
        """
        return self._neighbour_details

    @neighbour_details.setter
    def neighbour_details(self, neighbour_details):
        """Sets the neighbour_details of this NeighborEntityDetails.


        :param neighbour_details: The neighbour_details of this NeighborEntityDetails.  # noqa: E501
        :type: NeighborDetails
        """

        self._neighbour_details = neighbour_details

    def to_dict(self):
        """Returns the model properties as a dict"""
        result = {}

        for attr, _ in six.iteritems(self.openapi_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, NeighborEntityDetails):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
