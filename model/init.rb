require 'yaml/store'

module Rakki
  USERS = YAML::Store.new('accounts.yaml')
end

require_relative 'page'
require_relative 'user'
