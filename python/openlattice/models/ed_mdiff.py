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


class EDMdiff(object):
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
        'conflicts': 'EDM',
        'diff': 'EDM'
    }

    attribute_map = {
        'conflicts': 'conflicts',
        'diff': 'diff'
    }

    def __init__(self, conflicts=None, diff=None, local_vars_configuration=None):  # noqa: E501
        """EDMdiff - a model defined in OpenAPI"""  # noqa: E501
        if local_vars_configuration is None:
            local_vars_configuration = Configuration()
        self.local_vars_configuration = local_vars_configuration

        self._conflicts = None
        self._diff = None
        self.discriminator = None

        if conflicts is not None:
            self.conflicts = conflicts
        if diff is not None:
            self.diff = diff

    @property
    def conflicts(self):
        """Gets the conflicts of this EDMdiff.  # noqa: E501


        :return: The conflicts of this EDMdiff.  # noqa: E501
        :rtype: EDM
        """
        return self._conflicts

    @conflicts.setter
    def conflicts(self, conflicts):
        """Sets the conflicts of this EDMdiff.


        :param conflicts: The conflicts of this EDMdiff.  # noqa: E501
        :type conflicts: EDM
        """

        self._conflicts = conflicts

    @property
    def diff(self):
        """Gets the diff of this EDMdiff.  # noqa: E501


        :return: The diff of this EDMdiff.  # noqa: E501
        :rtype: EDM
        """
        return self._diff

    @diff.setter
    def diff(self, diff):
        """Sets the diff of this EDMdiff.


        :param diff: The diff of this EDMdiff.  # noqa: E501
        :type diff: EDM
        """

        self._diff = diff

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
        if not isinstance(other, EDMdiff):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, EDMdiff):
            return True

        return self.to_dict() != other.to_dict()
