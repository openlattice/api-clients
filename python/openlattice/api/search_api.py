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


class SearchApi(object):
    """NOTE: This class is auto generated by OpenAPI Generator
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    def __init__(self, api_client=None):
        if api_client is None:
            api_client = ApiClient()
        self.api_client = api_client

    def execute_entity_neighbor_search(self, entity_set_id, entity_key_id, **kwargs):  # noqa: E501
        """Executes a search for all neighbors of an entity that are connected by an association  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.execute_entity_neighbor_search(entity_set_id, entity_key_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str entity_set_id: (required)
        :param str entity_key_id: (required)
        :return: list[NeighborEntityDetails]
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.execute_entity_neighbor_search_with_http_info(entity_set_id, entity_key_id, **kwargs)  # noqa: E501
        else:
            (data) = self.execute_entity_neighbor_search_with_http_info(entity_set_id, entity_key_id, **kwargs)  # noqa: E501
            return data

    def execute_entity_neighbor_search_with_http_info(self, entity_set_id, entity_key_id, **kwargs):  # noqa: E501
        """Executes a search for all neighbors of an entity that are connected by an association  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.execute_entity_neighbor_search_with_http_info(entity_set_id, entity_key_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str entity_set_id: (required)
        :param str entity_key_id: (required)
        :return: list[NeighborEntityDetails]
                 If the method is called asynchronously,
                 returns the request thread.
        """

        local_var_params = locals()

        all_params = ['entity_set_id', 'entity_key_id']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method execute_entity_neighbor_search" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']
        # verify the required parameter 'entity_set_id' is set
        if ('entity_set_id' not in local_var_params or
                local_var_params['entity_set_id'] is None):
            raise ValueError("Missing the required parameter `entity_set_id` when calling `execute_entity_neighbor_search`")  # noqa: E501
        # verify the required parameter 'entity_key_id' is set
        if ('entity_key_id' not in local_var_params or
                local_var_params['entity_key_id'] is None):
            raise ValueError("Missing the required parameter `entity_key_id` when calling `execute_entity_neighbor_search`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'entity_set_id' in local_var_params:
            path_params['entitySetId'] = local_var_params['entity_set_id']  # noqa: E501
        if 'entity_key_id' in local_var_params:
            path_params['entityKeyId'] = local_var_params['entity_key_id']  # noqa: E501

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = ['openlattice_auth']  # noqa: E501

        return self.api_client.call_api(
            '/datastore/search/{entitySetId}/{entityKeyId}', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='list[NeighborEntityDetails]',  # noqa: E501
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats)

    def execute_filtered_entity_neighbor_search(self, entity_set_id, neighbor_search_filter, **kwargs):  # noqa: E501
        """Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.execute_filtered_entity_neighbor_search(entity_set_id, neighbor_search_filter, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str entity_set_id: (required)
        :param NeighborSearchFilter neighbor_search_filter: (required)
        :return: dict(str, NeighborEntityDetailsCollection)
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.execute_filtered_entity_neighbor_search_with_http_info(entity_set_id, neighbor_search_filter, **kwargs)  # noqa: E501
        else:
            (data) = self.execute_filtered_entity_neighbor_search_with_http_info(entity_set_id, neighbor_search_filter, **kwargs)  # noqa: E501
            return data

    def execute_filtered_entity_neighbor_search_with_http_info(self, entity_set_id, neighbor_search_filter, **kwargs):  # noqa: E501
        """Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.execute_filtered_entity_neighbor_search_with_http_info(entity_set_id, neighbor_search_filter, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str entity_set_id: (required)
        :param NeighborSearchFilter neighbor_search_filter: (required)
        :return: dict(str, NeighborEntityDetailsCollection)
                 If the method is called asynchronously,
                 returns the request thread.
        """

        local_var_params = locals()

        all_params = ['entity_set_id', 'neighbor_search_filter']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method execute_filtered_entity_neighbor_search" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']
        # verify the required parameter 'entity_set_id' is set
        if ('entity_set_id' not in local_var_params or
                local_var_params['entity_set_id'] is None):
            raise ValueError("Missing the required parameter `entity_set_id` when calling `execute_filtered_entity_neighbor_search`")  # noqa: E501
        # verify the required parameter 'neighbor_search_filter' is set
        if ('neighbor_search_filter' not in local_var_params or
                local_var_params['neighbor_search_filter'] is None):
            raise ValueError("Missing the required parameter `neighbor_search_filter` when calling `execute_filtered_entity_neighbor_search`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'entity_set_id' in local_var_params:
            path_params['entitySetId'] = local_var_params['entity_set_id']  # noqa: E501

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        if 'neighbor_search_filter' in local_var_params:
            body_params = local_var_params['neighbor_search_filter']
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = ['openlattice_auth']  # noqa: E501

        return self.api_client.call_api(
            '/datastore/search/{entitySetId}/neighbors/advanced', 'POST',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='dict(str, NeighborEntityDetailsCollection)',  # noqa: E501
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats)
