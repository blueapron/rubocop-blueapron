require 'rubocop'

require 'rubocop/blueapron/version'
require 'rubocop/blueapron/inject'

RuboCop::Blueapron::Inject.defaults!

require 'rubocop/cop/blueapron/date_time_now_utc'
require 'rubocop/cop/blueapron/time_now_utc'
