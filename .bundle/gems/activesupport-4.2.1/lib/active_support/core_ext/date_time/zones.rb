require 'date'
require 'active_support/core_ext/date_and_time/zones'

class DateTime
  include DateAndTime::Zones
end
