# frozen_string_literal: true

require_relative "json/configuration"
require_relative "json/dataset"
require_relative "json/loader"
require_relative "json/searcher"
require_relative "json/version"

module Flexi::Json
  class << self
    attr_writer :configuration

    def configuration
      @configuration ||= Flexi::Json::Configuration.instance
    end

    def configure
      yield(configuration)
    end

    def new(data)
      datasets = Flexi::Json::Loader.new(data).load_data
      @searcher = Flexi::Json::Searcher.new(datasets)
    end
  end

  def search(query = "", fields = nil, options: nil)
    @searcher.search(query, fields, options: options)
  end

  def find_duplicates(keys)
    @searcher.find_duplicates(keys)
  end
end
