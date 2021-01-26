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


class Filter(object):
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
        '_class': 'str',
        'values': 'list[str]',
        'lowerbound': 'str',
        'upperbound': 'str',
        'lowerboundequal': 'bool',
        'upperboundequal': 'bool'
    }

    attribute_map = {
        '_class': '@class',
        'values': 'values',
        'lowerbound': 'lowerbound',
        'upperbound': 'upperbound',
        'lowerboundequal': 'lowerboundequal',
        'upperboundequal': 'upperboundequal'
    }

    def __init__(self, _class=None, values=None, lowerbound=None, upperbound=None, lowerboundequal=None, upperboundequal=None, local_vars_configuration=None):  # noqa: E501
        """Filter - a model defined in OpenAPI"""  # noqa: E501
        if local_vars_configuration is None:
            local_vars_configuration = Configuration()
        self.local_vars_configuration = local_vars_configuration

        self.__class = None
        self._values = None
        self._lowerbound = None
        self._upperbound = None
        self._lowerboundequal = None
        self._upperboundequal = None
        self.discriminator = None

        if _class is not None:
            self._class = _class
        if values is not None:
            self.values = values
        if lowerbound is not None:
            self.lowerbound = lowerbound
        if upperbound is not None:
            self.upperbound = upperbound
        if lowerboundequal is not None:
            self.lowerboundequal = lowerboundequal
        if upperboundequal is not None:
            self.upperboundequal = upperboundequal

    @property
    def _class(self):
        """Gets the _class of this Filter.  # noqa: E501


        :return: The _class of this Filter.  # noqa: E501
        :rtype: str
        """
        return self.__class

    @_class.setter
    def _class(self, _class):
        """Sets the _class of this Filter.


        :param _class: The _class of this Filter.  # noqa: E501
        :type _class: str
        """

        self.__class = _class

    @property
    def values(self):
        """Gets the values of this Filter.  # noqa: E501


        :return: The values of this Filter.  # noqa: E501
        :rtype: list[str]
        """
        return self._values

    @values.setter
    def values(self, values):
        """Sets the values of this Filter.


        :param values: The values of this Filter.  # noqa: E501
        :type values: list[str]
        """

        self._values = values

    @property
    def lowerbound(self):
        """Gets the lowerbound of this Filter.  # noqa: E501


        :return: The lowerbound of this Filter.  # noqa: E501
        :rtype: str
        """
        return self._lowerbound

    @lowerbound.setter
    def lowerbound(self, lowerbound):
        """Sets the lowerbound of this Filter.


        :param lowerbound: The lowerbound of this Filter.  # noqa: E501
        :type lowerbound: str
        """

        self._lowerbound = lowerbound

    @property
    def upperbound(self):
        """Gets the upperbound of this Filter.  # noqa: E501


        :return: The upperbound of this Filter.  # noqa: E501
        :rtype: str
        """
        return self._upperbound

    @upperbound.setter
    def upperbound(self, upperbound):
        """Sets the upperbound of this Filter.


        :param upperbound: The upperbound of this Filter.  # noqa: E501
        :type upperbound: str
        """

        self._upperbound = upperbound

    @property
    def lowerboundequal(self):
        """Gets the lowerboundequal of this Filter.  # noqa: E501


        :return: The lowerboundequal of this Filter.  # noqa: E501
        :rtype: bool
        """
        return self._lowerboundequal

    @lowerboundequal.setter
    def lowerboundequal(self, lowerboundequal):
        """Sets the lowerboundequal of this Filter.


        :param lowerboundequal: The lowerboundequal of this Filter.  # noqa: E501
        :type lowerboundequal: bool
        """

        self._lowerboundequal = lowerboundequal

    @property
    def upperboundequal(self):
        """Gets the upperboundequal of this Filter.  # noqa: E501


        :return: The upperboundequal of this Filter.  # noqa: E501
        :rtype: bool
        """
        return self._upperboundequal

    @upperboundequal.setter
    def upperboundequal(self, upperboundequal):
        """Sets the upperboundequal of this Filter.


        :param upperboundequal: The upperboundequal of this Filter.  # noqa: E501
        :type upperboundequal: bool
        """

        self._upperboundequal = upperboundequal

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
        if not isinstance(other, Filter):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, Filter):
            return True

        return self.to_dict() != other.to_dict()
