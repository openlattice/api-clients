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


class EDM(object):
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
        'namespaces': 'list[str]',
        'schemas': 'list[Schema]',
        'property_types': 'list[PropertyType]',
        'entity_types': 'list[EntityType]',
        'association_types': 'list[AssociationType]'
    }

    attribute_map = {
        'namespaces': 'namespaces',
        'schemas': 'schemas',
        'property_types': 'propertyTypes',
        'entity_types': 'entityTypes',
        'association_types': 'associationTypes'
    }

    def __init__(self, namespaces=None, schemas=None, property_types=None, entity_types=None, association_types=None, local_vars_configuration=None):  # noqa: E501
        """EDM - a model defined in OpenAPI"""  # noqa: E501
        if local_vars_configuration is None:
            local_vars_configuration = Configuration()
        self.local_vars_configuration = local_vars_configuration

        self._namespaces = None
        self._schemas = None
        self._property_types = None
        self._entity_types = None
        self._association_types = None
        self.discriminator = None

        if namespaces is not None:
            self.namespaces = namespaces
        if schemas is not None:
            self.schemas = schemas
        if property_types is not None:
            self.property_types = property_types
        if entity_types is not None:
            self.entity_types = entity_types
        if association_types is not None:
            self.association_types = association_types

    @property
    def namespaces(self):
        """Gets the namespaces of this EDM.  # noqa: E501


        :return: The namespaces of this EDM.  # noqa: E501
        :rtype: list[str]
        """
        return self._namespaces

    @namespaces.setter
    def namespaces(self, namespaces):
        """Sets the namespaces of this EDM.


        :param namespaces: The namespaces of this EDM.  # noqa: E501
        :type: list[str]
        """

        self._namespaces = namespaces

    @property
    def schemas(self):
        """Gets the schemas of this EDM.  # noqa: E501


        :return: The schemas of this EDM.  # noqa: E501
        :rtype: list[Schema]
        """
        return self._schemas

    @schemas.setter
    def schemas(self, schemas):
        """Sets the schemas of this EDM.


        :param schemas: The schemas of this EDM.  # noqa: E501
        :type: list[Schema]
        """

        self._schemas = schemas

    @property
    def property_types(self):
        """Gets the property_types of this EDM.  # noqa: E501


        :return: The property_types of this EDM.  # noqa: E501
        :rtype: list[PropertyType]
        """
        return self._property_types

    @property_types.setter
    def property_types(self, property_types):
        """Sets the property_types of this EDM.


        :param property_types: The property_types of this EDM.  # noqa: E501
        :type: list[PropertyType]
        """

        self._property_types = property_types

    @property
    def entity_types(self):
        """Gets the entity_types of this EDM.  # noqa: E501


        :return: The entity_types of this EDM.  # noqa: E501
        :rtype: list[EntityType]
        """
        return self._entity_types

    @entity_types.setter
    def entity_types(self, entity_types):
        """Sets the entity_types of this EDM.


        :param entity_types: The entity_types of this EDM.  # noqa: E501
        :type: list[EntityType]
        """

        self._entity_types = entity_types

    @property
    def association_types(self):
        """Gets the association_types of this EDM.  # noqa: E501


        :return: The association_types of this EDM.  # noqa: E501
        :rtype: list[AssociationType]
        """
        return self._association_types

    @association_types.setter
    def association_types(self, association_types):
        """Sets the association_types of this EDM.


        :param association_types: The association_types of this EDM.  # noqa: E501
        :type: list[AssociationType]
        """

        self._association_types = association_types

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
        if not isinstance(other, EDM):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, EDM):
            return True

        return self.to_dict() != other.to_dict()
