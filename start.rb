dir = File.expand_path(File.dirname(__FILE__))

$LOAD_PATH.unshift(dir)
Dir["#{dir}/vendor/*/lib"].each{|lib| $LOAD_PATH.unshift(lib) }

# sorry, but we need this on debian :(
# gem 'git', '1.1.1'

require 'yaml/store'
require 'logger'
require 'ramaze'
require 'org'
require 'git'
require 'nokogiri'
# require 'ultraviolet'
require 'builder'

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
