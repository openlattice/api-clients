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


class MaterializedViewAccount(object):
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
        'username': 'str',
        'credential': 'str'
    }

    attribute_map = {
        'username': 'username',
        'credential': 'credential'
    }

    def __init__(self, username=None, credential=None, local_vars_configuration=None):  # noqa: E501
        """MaterializedViewAccount - a model defined in OpenAPI"""  # noqa: E501
        if local_vars_configuration is None:
            local_vars_configuration = Configuration()
        self.local_vars_configuration = local_vars_configuration

        self._username = None
        self._credential = None
        self.discriminator = None

        if username is not None:
            self.username = username
        if credential is not None:
            self.credential = credential

    @property
    def username(self):
        """Gets the username of this MaterializedViewAccount.  # noqa: E501


        :return: The username of this MaterializedViewAccount.  # noqa: E501
        :rtype: str
        """
        return self._username

    @username.setter
    def username(self, username):
        """Sets the username of this MaterializedViewAccount.


        :param username: The username of this MaterializedViewAccount.  # noqa: E501
        :type username: str
        """

        self._username = username

    @property
    def credential(self):
        """Gets the credential of this MaterializedViewAccount.  # noqa: E501


        :return: The credential of this MaterializedViewAccount.  # noqa: E501
        :rtype: str
        """
        return self._credential

    @credential.setter
    def credential(self, credential):
        """Sets the credential of this MaterializedViewAccount.


        :param credential: The credential of this MaterializedViewAccount.  # noqa: E501
        :type credential: str
        """

        self._credential = credential

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
        if not isinstance(other, MaterializedViewAccount):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, MaterializedViewAccount):
            return True

        return self.to_dict() != other.to_dict()
