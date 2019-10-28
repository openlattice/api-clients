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


class ConstraintGroup(object):
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
        'min': 'int',
        'constraints': 'list[Constraint]'
    }

    attribute_map = {
        'min': 'min',
        'constraints': 'constraints'
    }

    def __init__(self, min=None, constraints=None):  # noqa: E501
        """ConstraintGroup - a model defined in OpenAPI"""  # noqa: E501

        self._min = None
        self._constraints = None
        self.discriminator = None

        if min is not None:
            self.min = min
        if constraints is not None:
            self.constraints = constraints

    @property
    def min(self):
        """Gets the min of this ConstraintGroup.  # noqa: E501


        :return: The min of this ConstraintGroup.  # noqa: E501
        :rtype: int
        """
        return self._min

    @min.setter
    def min(self, min):
        """Sets the min of this ConstraintGroup.


        :param min: The min of this ConstraintGroup.  # noqa: E501
        :type: int
        """

        self._min = min

    @property
    def constraints(self):
        """Gets the constraints of this ConstraintGroup.  # noqa: E501


        :return: The constraints of this ConstraintGroup.  # noqa: E501
        :rtype: list[Constraint]
        """
        return self._constraints

    @constraints.setter
    def constraints(self, constraints):
        """Sets the constraints of this ConstraintGroup.


        :param constraints: The constraints of this ConstraintGroup.  # noqa: E501
        :type: list[Constraint]
        """

        self._constraints = constraints

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
        if not isinstance(other, ConstraintGroup):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
