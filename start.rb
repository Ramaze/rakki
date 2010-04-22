require 'yaml/store'
require 'coderay'
require 'logger'
require 'ramaze'
require 'org'
require 'git'
require 'nokogiri'

# require 'ultraviolet'
# Uv.copy_files('xhtml', File.join(File.dirname(__FILE__), 'public'))

require_relative 'vendor/feed_convert'
require_relative 'vendor/git_extension'
require_relative 'vendor/rack/localize'

require 'ramaze/helper/localize'
require 'ramaze/helper/user'
require_relative 'env'
require_relative 'model/init'
require_relative 'controller/init'

Ramaze.start(:adapter => :webrick, :mode => :live) if __FILE__ == $0
