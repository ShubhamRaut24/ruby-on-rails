JSONAPI.configure do |config|
    config.resource_cache = Rails.cache
    # The following option works in versions v0.10 and later
    #config.default_caching = true

    config.default_paginator = :paged # default is :none

    config.default_page_size = 10 # default is 10
    config.maximum_page_size = 100 # default is 20 
    config.use_text_errors = true
    # config.json_key_format = :dasherized_key
   end