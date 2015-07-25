module FoodRunners
  class PickupTime

    attr_reader :day, :hour
    def initialize(day_type, hour)
      unless PickupDay::ALL.include?(day_type)
        raise FoodRunners::Error::InvalidPickupDate
      end
      @day = day_type
      @hour = time(hour)
    end

    def day
      @day
    end

    def time(hour)
      # if Time.now.hour == hour
      #   TIME_OPTIONS[:now]
      if (VALID_PICKUP_HOURS.include?(hour))
        TIME_OPTIONS[hour]
      else
        raise FoodRunners::Error::InvalidPickupHour
      end
    end

    VALID_PICKUP_HOURS = (8..20).to_a

    TIME_OPTIONS = {}.tap { |pickup_times|
      pickup_times[:now] = 'It is packaged and ready to go'

      (8..11).each { |i|
        pickup_times[i] = "From #{i}am"
      }

      pickup_times[12] = 'From 12pm'

      (13..20).map { |i|
        pickup_times[i] = "From #{i - 12}pm"
      }
    }
  end
end
