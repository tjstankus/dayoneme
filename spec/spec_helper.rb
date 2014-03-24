$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'dayoneme'

Dir[File.join(File.dirname(__FILE__), 'support/**/*.rb')].each { |f| require f }

RSpec.configure do |c|
  c.include EntriesHelpers
end
