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


class OrganizationExternalDatabaseTable(object):
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
        'id': 'str',
        'name': 'str',
        'title': 'str',
        'description': 'str',
        'organization_id': 'str'
    }

    attribute_map = {
        'id': 'id',
        'name': 'name',
        'title': 'title',
        'description': 'description',
        'organization_id': 'organizationId'
    }

    def __init__(self, id=None, name=None, title=None, description=None, organization_id=None):  # noqa: E501
        """OrganizationExternalDatabaseTable - a model defined in OpenAPI"""  # noqa: E501

        self._id = None
        self._name = None
        self._title = None
        self._description = None
        self._organization_id = None
        self.discriminator = None

        if id is not None:
            self.id = id
        if name is not None:
            self.name = name
        if title is not None:
            self.title = title
        if description is not None:
            self.description = description
        if organization_id is not None:
            self.organization_id = organization_id

    @property
    def id(self):
        """Gets the id of this OrganizationExternalDatabaseTable.  # noqa: E501


        :return: The id of this OrganizationExternalDatabaseTable.  # noqa: E501
        :rtype: str
        """
        return self._id

    @id.setter
    def id(self, id):
        """Sets the id of this OrganizationExternalDatabaseTable.


        :param id: The id of this OrganizationExternalDatabaseTable.  # noqa: E501
        :type: str
        """

        self._id = id

    @property
    def name(self):
        """Gets the name of this OrganizationExternalDatabaseTable.  # noqa: E501


        :return: The name of this OrganizationExternalDatabaseTable.  # noqa: E501
        :rtype: str
        """
        return self._name

    @name.setter
    def name(self, name):
        """Sets the name of this OrganizationExternalDatabaseTable.


        :param name: The name of this OrganizationExternalDatabaseTable.  # noqa: E501
        :type: str
        """

        self._name = name

    @property
    def title(self):
        """Gets the title of this OrganizationExternalDatabaseTable.  # noqa: E501


        :return: The title of this OrganizationExternalDatabaseTable.  # noqa: E501
        :rtype: str
        """
        return self._title

    @title.setter
    def title(self, title):
        """Sets the title of this OrganizationExternalDatabaseTable.


        :param title: The title of this OrganizationExternalDatabaseTable.  # noqa: E501
        :type: str
        """

        self._title = title

    @property
    def description(self):
        """Gets the description of this OrganizationExternalDatabaseTable.  # noqa: E501


        :return: The description of this OrganizationExternalDatabaseTable.  # noqa: E501
        :rtype: str
        """
        return self._description

    @description.setter
    def description(self, description):
        """Sets the description of this OrganizationExternalDatabaseTable.


        :param description: The description of this OrganizationExternalDatabaseTable.  # noqa: E501
        :type: str
        """

        self._description = description

    @property
    def organization_id(self):
        """Gets the organization_id of this OrganizationExternalDatabaseTable.  # noqa: E501


        :return: The organization_id of this OrganizationExternalDatabaseTable.  # noqa: E501
        :rtype: str
        """
        return self._organization_id

    @organization_id.setter
    def organization_id(self, organization_id):
        """Sets the organization_id of this OrganizationExternalDatabaseTable.


        :param organization_id: The organization_id of this OrganizationExternalDatabaseTable.  # noqa: E501
        :type: str
        """

        self._organization_id = organization_id

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
        if not isinstance(other, OrganizationExternalDatabaseTable):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
