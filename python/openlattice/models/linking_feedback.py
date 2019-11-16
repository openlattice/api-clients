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


class LinkingFeedback(object):
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
        'linking_entity': 'EntityDataKey',
        'link': 'list[EntityDataKey]',
        'unlink': 'list[EntityDataKey]'
    }

    attribute_map = {
        'linking_entity': 'linkingEntity',
        'link': 'link',
        'unlink': 'unlink'
    }

    def __init__(self, linking_entity=None, link=None, unlink=None):  # noqa: E501
        """LinkingFeedback - a model defined in OpenAPI"""  # noqa: E501

        self._linking_entity = None
        self._link = None
        self._unlink = None
        self.discriminator = None

        if linking_entity is not None:
            self.linking_entity = linking_entity
        if link is not None:
            self.link = link
        if unlink is not None:
            self.unlink = unlink

    @property
    def linking_entity(self):
        """Gets the linking_entity of this LinkingFeedback.  # noqa: E501


        :return: The linking_entity of this LinkingFeedback.  # noqa: E501
        :rtype: EntityDataKey
        """
        return self._linking_entity

    @linking_entity.setter
    def linking_entity(self, linking_entity):
        """Sets the linking_entity of this LinkingFeedback.


        :param linking_entity: The linking_entity of this LinkingFeedback.  # noqa: E501
        :type: EntityDataKey
        """

        self._linking_entity = linking_entity

    @property
    def link(self):
        """Gets the link of this LinkingFeedback.  # noqa: E501


        :return: The link of this LinkingFeedback.  # noqa: E501
        :rtype: list[EntityDataKey]
        """
        return self._link

    @link.setter
    def link(self, link):
        """Sets the link of this LinkingFeedback.


        :param link: The link of this LinkingFeedback.  # noqa: E501
        :type: list[EntityDataKey]
        """

        self._link = link

    @property
    def unlink(self):
        """Gets the unlink of this LinkingFeedback.  # noqa: E501


        :return: The unlink of this LinkingFeedback.  # noqa: E501
        :rtype: list[EntityDataKey]
        """
        return self._unlink

    @unlink.setter
    def unlink(self, unlink):
        """Sets the unlink of this LinkingFeedback.


        :param unlink: The unlink of this LinkingFeedback.  # noqa: E501
        :type: list[EntityDataKey]
        """

        self._unlink = unlink

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
        if not isinstance(other, LinkingFeedback):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other