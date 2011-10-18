# **Akephalos** is a cross-platform Ruby interface for *HtmlUnit*, a headless
# browser for the Java platform.
#
# The only requirement is that a Java runtime is available.
#

puts "YOU ARE USING A DEPRECATED VERSION. USE: https://github.com/Nerian/akephalos2"

require 'java' if RUBY_PLATFORM == 'java'
require 'pathname'

module Akephalos
  BIN_DIR = Pathname(__FILE__).expand_path.dirname.parent + 'bin'
end

require 'akephalos/client'
require 'capybara'
require 'akephalos/capybara'

Capybara.register_driver :akephalos do |app|
  Capybara::Driver::Akephalos.new(app)
end