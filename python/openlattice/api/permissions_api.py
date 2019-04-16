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


class PermissionsApi(object):
    """NOTE: This class is auto generated by OpenAPI Generator
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    def __init__(self, api_client=None):
        if api_client is None:
            api_client = ApiClient()
        self.api_client = api_client

    def get_acl(self, request_body, **kwargs):  # noqa: E501
        """Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_acl(request_body, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param list[str] request_body: (required)
        :return: Acl
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.get_acl_with_http_info(request_body, **kwargs)  # noqa: E501
        else:
            (data) = self.get_acl_with_http_info(request_body, **kwargs)  # noqa: E501
            return data

    def get_acl_with_http_info(self, request_body, **kwargs):  # noqa: E501
        """Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_acl_with_http_info(request_body, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param list[str] request_body: (required)
        :return: Acl
                 If the method is called asynchronously,
                 returns the request thread.
        """

        local_var_params = locals()

        all_params = ['request_body']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method get_acl" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']
        # verify the required parameter 'request_body' is set
        if ('request_body' not in local_var_params or
                local_var_params['request_body'] is None):
            raise ValueError("Missing the required parameter `request_body` when calling `get_acl`")  # noqa: E501

        collection_formats = {}

        path_params = {}

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        if 'request_body' in local_var_params:
            body_params = local_var_params['request_body']
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = ['http_auth', 'openlattice_auth']  # noqa: E501

        return self.api_client.call_api(
            '/datastore/permissions', 'POST',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='Acl',  # noqa: E501
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats)

    def update_acl(self, acl_data, **kwargs):  # noqa: E501
        """Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.update_acl(acl_data, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param AclData acl_data: (required)
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.update_acl_with_http_info(acl_data, **kwargs)  # noqa: E501
        else:
            (data) = self.update_acl_with_http_info(acl_data, **kwargs)  # noqa: E501
            return data

    def update_acl_with_http_info(self, acl_data, **kwargs):  # noqa: E501
        """Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.update_acl_with_http_info(acl_data, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param AclData acl_data: (required)
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """

        local_var_params = locals()

        all_params = ['acl_data']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method update_acl" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']
        # verify the required parameter 'acl_data' is set
        if ('acl_data' not in local_var_params or
                local_var_params['acl_data'] is None):
            raise ValueError("Missing the required parameter `acl_data` when calling `update_acl`")  # noqa: E501

        collection_formats = {}

        path_params = {}

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        if 'acl_data' in local_var_params:
            body_params = local_var_params['acl_data']
        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = ['http_auth', 'openlattice_auth']  # noqa: E501

        return self.api_client.call_api(
            '/datastore/permissions', 'PATCH',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type=None,  # noqa: E501
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats)
