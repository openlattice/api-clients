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


class DataSetColumn(object):
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
        'data_set_id': 'str',
        'name': 'str',
        'organization_id': 'str',
        'data_type': 'str',
        'metadata': 'SecurableObjectMetadataUpdate',
        'acl_key': 'list[str]'
    }

    attribute_map = {
        'id': 'id',
        'data_set_id': 'dataSetId',
        'name': 'name',
        'organization_id': 'organizationId',
        'data_type': 'dataType',
        'metadata': 'metadata',
        'acl_key': 'aclKey'
    }

    def __init__(self, id=None, data_set_id=None, name=None, organization_id=None, data_type=None, metadata=None, acl_key=None, local_vars_configuration=None):  # noqa: E501
        """DataSetColumn - a model defined in OpenAPI"""  # noqa: E501
        if local_vars_configuration is None:
            local_vars_configuration = Configuration()
        self.local_vars_configuration = local_vars_configuration

        self._id = None
        self._data_set_id = None
        self._name = None
        self._organization_id = None
        self._data_type = None
        self._metadata = None
        self._acl_key = None
        self.discriminator = None

        if id is not None:
            self.id = id
        if data_set_id is not None:
            self.data_set_id = data_set_id
        if name is not None:
            self.name = name
        if organization_id is not None:
            self.organization_id = organization_id
        if data_type is not None:
            self.data_type = data_type
        if metadata is not None:
            self.metadata = metadata
        if acl_key is not None:
            self.acl_key = acl_key

    @property
    def id(self):
        """Gets the id of this DataSetColumn.  # noqa: E501


        :return: The id of this DataSetColumn.  # noqa: E501
        :rtype: str
        """
        return self._id

    @id.setter
    def id(self, id):
        """Sets the id of this DataSetColumn.


        :param id: The id of this DataSetColumn.  # noqa: E501
        :type id: str
        """

        self._id = id

    @property
    def data_set_id(self):
        """Gets the data_set_id of this DataSetColumn.  # noqa: E501


        :return: The data_set_id of this DataSetColumn.  # noqa: E501
        :rtype: str
        """
        return self._data_set_id

    @data_set_id.setter
    def data_set_id(self, data_set_id):
        """Sets the data_set_id of this DataSetColumn.


        :param data_set_id: The data_set_id of this DataSetColumn.  # noqa: E501
        :type data_set_id: str
        """

        self._data_set_id = data_set_id

    @property
    def name(self):
        """Gets the name of this DataSetColumn.  # noqa: E501


        :return: The name of this DataSetColumn.  # noqa: E501
        :rtype: str
        """
        return self._name

    @name.setter
    def name(self, name):
        """Sets the name of this DataSetColumn.


        :param name: The name of this DataSetColumn.  # noqa: E501
        :type name: str
        """

        self._name = name

    @property
    def organization_id(self):
        """Gets the organization_id of this DataSetColumn.  # noqa: E501


        :return: The organization_id of this DataSetColumn.  # noqa: E501
        :rtype: str
        """
        return self._organization_id

    @organization_id.setter
    def organization_id(self, organization_id):
        """Sets the organization_id of this DataSetColumn.


        :param organization_id: The organization_id of this DataSetColumn.  # noqa: E501
        :type organization_id: str
        """

        self._organization_id = organization_id

    @property
    def data_type(self):
        """Gets the data_type of this DataSetColumn.  # noqa: E501


        :return: The data_type of this DataSetColumn.  # noqa: E501
        :rtype: str
        """
        return self._data_type

    @data_type.setter
    def data_type(self, data_type):
        """Sets the data_type of this DataSetColumn.


        :param data_type: The data_type of this DataSetColumn.  # noqa: E501
        :type data_type: str
        """

        self._data_type = data_type

    @property
    def metadata(self):
        """Gets the metadata of this DataSetColumn.  # noqa: E501


        :return: The metadata of this DataSetColumn.  # noqa: E501
        :rtype: SecurableObjectMetadataUpdate
        """
        return self._metadata

    @metadata.setter
    def metadata(self, metadata):
        """Sets the metadata of this DataSetColumn.


        :param metadata: The metadata of this DataSetColumn.  # noqa: E501
        :type metadata: SecurableObjectMetadataUpdate
        """

        self._metadata = metadata

    @property
    def acl_key(self):
        """Gets the acl_key of this DataSetColumn.  # noqa: E501


        :return: The acl_key of this DataSetColumn.  # noqa: E501
        :rtype: list[str]
        """
        return self._acl_key

    @acl_key.setter
    def acl_key(self, acl_key):
        """Sets the acl_key of this DataSetColumn.


        :param acl_key: The acl_key of this DataSetColumn.  # noqa: E501
        :type acl_key: list[str]
        """

        self._acl_key = acl_key

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
        if not isinstance(other, DataSetColumn):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, DataSetColumn):
            return True

        return self.to_dict() != other.to_dict()
