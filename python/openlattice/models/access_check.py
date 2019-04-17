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


class AccessCheck(object):
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
        'acl_key': 'list[str]',
        'permissions': 'list[str]'
    }

    attribute_map = {
        'acl_key': 'aclKey',
        'permissions': 'permissions'
    }

    def __init__(self, acl_key=None, permissions=None):  # noqa: E501
        """AccessCheck - a model defined in OpenAPI"""  # noqa: E501

        self._acl_key = None
        self._permissions = None
        self.discriminator = None

        if acl_key is not None:
            self.acl_key = acl_key
        if permissions is not None:
            self.permissions = permissions

    @property
    def acl_key(self):
        """Gets the acl_key of this AccessCheck.  # noqa: E501


        :return: The acl_key of this AccessCheck.  # noqa: E501
        :rtype: list[str]
        """
        return self._acl_key

    @acl_key.setter
    def acl_key(self, acl_key):
        """Sets the acl_key of this AccessCheck.


        :param acl_key: The acl_key of this AccessCheck.  # noqa: E501
        :type: list[str]
        """

        self._acl_key = acl_key

    @property
    def permissions(self):
        """Gets the permissions of this AccessCheck.  # noqa: E501


        :return: The permissions of this AccessCheck.  # noqa: E501
        :rtype: list[str]
        """
        return self._permissions

    @permissions.setter
    def permissions(self, permissions):
        """Sets the permissions of this AccessCheck.


        :param permissions: The permissions of this AccessCheck.  # noqa: E501
        :type: list[str]
        """
        allowed_values = ["DISCOVER", "MATERIALIZE", "LINK", "READ", "WRITE", "OWNER"]  # noqa: E501
        if not set(permissions).issubset(set(allowed_values)):
            raise ValueError(
                "Invalid values for `permissions` [{0}], must be a subset of [{1}]"  # noqa: E501
                .format(", ".join(map(str, set(permissions) - set(allowed_values))),  # noqa: E501
                        ", ".join(map(str, allowed_values)))
            )

        self._permissions = permissions

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
        if not isinstance(other, AccessCheck):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other