# coding: utf-8

"""
    OpenLattice API

    OpenLattice API  # noqa: E501

    The version of the OpenAPI document: 0.0.1
    Contact: support@openlattice.com
    Generated by: https://openapi-generator.tech
"""


import pprint
import re  # noqa: F401

import six

from openlattice.configuration import Configuration


class NeighborSearchFilter(object):
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
        'entity_key_ids': 'list[str]',
        'src': 'list[str]',
        'dst': 'list[str]',
        'edge': 'list[str]'
    }

    attribute_map = {
        'entity_key_ids': 'entityKeyIds',
        'src': 'src',
        'dst': 'dst',
        'edge': 'edge'
    }

    def __init__(self, entity_key_ids=None, src=None, dst=None, edge=None, local_vars_configuration=None):  # noqa: E501
        """NeighborSearchFilter - a model defined in OpenAPI"""  # noqa: E501
        if local_vars_configuration is None:
            local_vars_configuration = Configuration()
        self.local_vars_configuration = local_vars_configuration

        self._entity_key_ids = None
        self._src = None
        self._dst = None
        self._edge = None
        self.discriminator = None

        if entity_key_ids is not None:
            self.entity_key_ids = entity_key_ids
        if src is not None:
            self.src = src
        if dst is not None:
            self.dst = dst
        if edge is not None:
            self.edge = edge

    @property
    def entity_key_ids(self):
        """Gets the entity_key_ids of this NeighborSearchFilter.  # noqa: E501


        :return: The entity_key_ids of this NeighborSearchFilter.  # noqa: E501
        :rtype: list[str]
        """
        return self._entity_key_ids

    @entity_key_ids.setter
    def entity_key_ids(self, entity_key_ids):
        """Sets the entity_key_ids of this NeighborSearchFilter.


        :param entity_key_ids: The entity_key_ids of this NeighborSearchFilter.  # noqa: E501
        :type entity_key_ids: list[str]
        """

        self._entity_key_ids = entity_key_ids

    @property
    def src(self):
        """Gets the src of this NeighborSearchFilter.  # noqa: E501


        :return: The src of this NeighborSearchFilter.  # noqa: E501
        :rtype: list[str]
        """
        return self._src

    @src.setter
    def src(self, src):
        """Sets the src of this NeighborSearchFilter.


        :param src: The src of this NeighborSearchFilter.  # noqa: E501
        :type src: list[str]
        """

        self._src = src

    @property
    def dst(self):
        """Gets the dst of this NeighborSearchFilter.  # noqa: E501


        :return: The dst of this NeighborSearchFilter.  # noqa: E501
        :rtype: list[str]
        """
        return self._dst

    @dst.setter
    def dst(self, dst):
        """Sets the dst of this NeighborSearchFilter.


        :param dst: The dst of this NeighborSearchFilter.  # noqa: E501
        :type dst: list[str]
        """

        self._dst = dst

    @property
    def edge(self):
        """Gets the edge of this NeighborSearchFilter.  # noqa: E501


        :return: The edge of this NeighborSearchFilter.  # noqa: E501
        :rtype: list[str]
        """
        return self._edge

    @edge.setter
    def edge(self, edge):
        """Sets the edge of this NeighborSearchFilter.


        :param edge: The edge of this NeighborSearchFilter.  # noqa: E501
        :type edge: list[str]
        """

        self._edge = edge

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
        if not isinstance(other, NeighborSearchFilter):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, NeighborSearchFilter):
            return True

        return self.to_dict() != other.to_dict()
