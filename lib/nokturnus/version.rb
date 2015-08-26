require 'json'

# encoding: utf-8
# main entry point method
# @since 0.0.1
module Nokturnus
  # define the version of the gem
  # @since 0.0.1
  module Version
    MAJOR = 0
    MINOR = 0
    PATCH = 5

    STRING = [MAJOR, MINOR, PATCH].compact.join('.')

    NAME   = 'Nokturnus'
    BANNER = "#{NAME} v%s"

    # pull the version into the gemspec for use with Jenkins
    # @since 0.0.1

    module_function

    # format the version
    #
    # @return [string] a properly formated version string
    def version
      format(BANNER, STRING)
    end

    # format the version
    #
    # @return [string] a properly formated json version
    def json_version
      {
        'version' => STRING
      }.to_json
    end
  end
end
