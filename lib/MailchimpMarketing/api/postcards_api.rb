=begin
#Mailchimp Marketing API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0.13
Contact: apihelp@mailchimp.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module MailchimpMarketing
  class PostcardsApi
    attr_accessor :api_client

    def initialize(api_client)
      @api_client = api_client
    end

    # List postcards
    def get_all(opts = {})
      fail ArgumentError, 'invalid value for "sort_dir", must be one of ASC, DESC' if opts[:'sort_dir'] && !['ASC', 'DESC'].include?(opts[:'sort_dir'])
      fail ArgumentError, 'invalid value for "opts[:"count"]", must be smaller than or equal to 1000.' if !opts[:'count'].nil? && opts[:'count'] > 1000

      query_params = {}
      query_params[:'sort_dir'] = opts[:'sort_dir'] if !opts[:'sort_dir'].nil?
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      post_body = nil

      local_var_path = '/postcards'
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end
  end
end
