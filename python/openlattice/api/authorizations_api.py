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


class AuthorizationsApi(object):
    """NOTE: This class is auto generated by OpenAPI Generator
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    def __init__(self, api_client=None):
        if api_client is None:
            api_client = ApiClient()
        self.api_client = api_client

    def check_authorizations(self, access_check, **kwargs):  # noqa: E501
        """Check authorizations  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.check_authorizations(access_check, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param AccessCheck access_check: (required)
        :return: list[Authorization]
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.check_authorizations_with_http_info(access_check, **kwargs)  # noqa: E501
        else:
            (data) = self.check_authorizations_with_http_info(access_check, **kwargs)  # noqa: E501
            return data

    def check_authorizations_with_http_info(self, access_check, **kwargs):  # noqa: E501
        """Check authorizations  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.check_authorizations_with_http_info(access_check, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param AccessCheck access_check: (required)
        :return: list[Authorization]
                 If the method is called asynchronously,
                 returns the request thread.
        """

        local_var_params = locals()

        all_params = ['access_check']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method check_authorizations" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']
        # verify the required parameter 'access_check' is set
        if ('access_check' not in local_var_params or
                local_var_params['access_check'] is None):
            raise ValueError("Missing the required parameter `access_check` when calling `check_authorizations`")  # noqa: E501

        collection_formats = {}

        path_params = {}

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        if 'access_check' in local_var_params:
            body_params = local_var_params['access_check']
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = ['http_auth', 'openlattice_auth']  # noqa: E501

        return self.api_client.call_api(
            '/datastore/authorizations', 'POST',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='list[Authorization]',  # noqa: E501
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats)

    def get_accessible_objects(self, **kwargs):  # noqa: E501
        """Returns paged results for all authorized objects of specified objectType, that the current user has specified permission for.  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_accessible_objects(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str object_type:
        :param str permission:
        :param str paging_token:
        :return: AuthorizedObjectsSearchResult
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.get_accessible_objects_with_http_info(**kwargs)  # noqa: E501
        else:
            (data) = self.get_accessible_objects_with_http_info(**kwargs)  # noqa: E501
            return data

    def get_accessible_objects_with_http_info(self, **kwargs):  # noqa: E501
        """Returns paged results for all authorized objects of specified objectType, that the current user has specified permission for.  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_accessible_objects_with_http_info(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str object_type:
        :param str permission:
        :param str paging_token:
        :return: AuthorizedObjectsSearchResult
                 If the method is called asynchronously,
                 returns the request thread.
        """

        local_var_params = locals()

        all_params = ['object_type', 'permission', 'paging_token']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method get_accessible_objects" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']

        collection_formats = {}

        path_params = {}

        query_params = []
        if 'object_type' in local_var_params:
            query_params.append(('objectType', local_var_params['object_type']))  # noqa: E501
        if 'permission' in local_var_params:
            query_params.append(('permission', local_var_params['permission']))  # noqa: E501
        if 'paging_token' in local_var_params:
            query_params.append(('pagingToken', local_var_params['paging_token']))  # noqa: E501

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = ['http_auth', 'openlattice_auth']  # noqa: E501

        return self.api_client.call_api(
            '/datastore/authorizations', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='AuthorizedObjectsSearchResult',  # noqa: E501
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats)
