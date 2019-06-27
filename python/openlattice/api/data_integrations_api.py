# coding: utf-8

"""
    OpenLattice API

    OpenLattice API  # noqa: E501

    OpenAPI spec version: 0.0.1
    Contact: support@openlattice.com
    Generated by: https://openapi-generator.tech
"""


from __future__ import absolute_import

import re  # noqa: F401

# python 2 and python 3 compatibility library
import six

from openlattice.api_client import ApiClient


class DataIntegrationsApi(object):
    """NOTE: This class is auto generated by OpenAPI Generator
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    def __init__(self, api_client=None):
        if api_client is None:
            api_client = ApiClient()
        self.api_client = api_client

    def get_entity_key_ids(self, entity_key, **kwargs):  # noqa: E501
        """Get entity key IDs  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_entity_key_ids(entity_key, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param list[EntityKey] entity_key: (required)
        :return: list[str]
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.get_entity_key_ids_with_http_info(entity_key, **kwargs)  # noqa: E501
        else:
            (data) = self.get_entity_key_ids_with_http_info(entity_key, **kwargs)  # noqa: E501
            return data

    def get_entity_key_ids_with_http_info(self, entity_key, **kwargs):  # noqa: E501
        """Get entity key IDs  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_entity_key_ids_with_http_info(entity_key, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param list[EntityKey] entity_key: (required)
        :return: list[str]
                 If the method is called asynchronously,
                 returns the request thread.
        """

        local_var_params = locals()

        all_params = ['entity_key']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method get_entity_key_ids" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']
        # verify the required parameter 'entity_key' is set
        if ('entity_key' not in local_var_params or
                local_var_params['entity_key'] is None):
            raise ValueError("Missing the required parameter `entity_key` when calling `get_entity_key_ids`")  # noqa: E501

        collection_formats = {}

        path_params = {}

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        if 'entity_key' in local_var_params:
            body_params = local_var_params['entity_key']
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = ['http_auth', 'openlattice_auth']  # noqa: E501

        return self.api_client.call_api(
            '/datastore/integration/entityKeyIds', 'POST',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='list[str]',  # noqa: E501
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats)

    def integrate_entity_and_association_data(self, detailed_results, bulk_data_creation, **kwargs):  # noqa: E501
        """Integrate entity and association data  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.integrate_entity_and_association_data(detailed_results, bulk_data_creation, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param bool detailed_results: (required)
        :param BulkDataCreation bulk_data_creation: (required)
        :return: IntegrationResults
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.integrate_entity_and_association_data_with_http_info(detailed_results, bulk_data_creation, **kwargs)  # noqa: E501
        else:
            (data) = self.integrate_entity_and_association_data_with_http_info(detailed_results, bulk_data_creation, **kwargs)  # noqa: E501
            return data

    def integrate_entity_and_association_data_with_http_info(self, detailed_results, bulk_data_creation, **kwargs):  # noqa: E501
        """Integrate entity and association data  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.integrate_entity_and_association_data_with_http_info(detailed_results, bulk_data_creation, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param bool detailed_results: (required)
        :param BulkDataCreation bulk_data_creation: (required)
        :return: IntegrationResults
                 If the method is called asynchronously,
                 returns the request thread.
        """

        local_var_params = locals()

        all_params = ['detailed_results', 'bulk_data_creation']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method integrate_entity_and_association_data" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']
        # verify the required parameter 'detailed_results' is set
        if ('detailed_results' not in local_var_params or
                local_var_params['detailed_results'] is None):
            raise ValueError("Missing the required parameter `detailed_results` when calling `integrate_entity_and_association_data`")  # noqa: E501
        # verify the required parameter 'bulk_data_creation' is set
        if ('bulk_data_creation' not in local_var_params or
                local_var_params['bulk_data_creation'] is None):
            raise ValueError("Missing the required parameter `bulk_data_creation` when calling `integrate_entity_and_association_data`")  # noqa: E501

        collection_formats = {}

        path_params = {}

        query_params = []
        if 'detailed_results' in local_var_params:
            query_params.append(('detailedResults', local_var_params['detailed_results']))  # noqa: E501

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        if 'bulk_data_creation' in local_var_params:
            body_params = local_var_params['bulk_data_creation']
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = ['http_auth', 'openlattice_auth']  # noqa: E501

        return self.api_client.call_api(
            '/datastore/integration', 'POST',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='IntegrationResults',  # noqa: E501
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats)
