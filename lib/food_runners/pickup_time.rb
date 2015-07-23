class PickupTime
  FoodRunners::PickupDay::TODAY = 0
  FoodRunners::PickupDay::TOMORROW = 1

  def day
    @day
  end

  def time
    if Time.now.hour == @pickup_time.hour
      TIME_OPTIONS[:now]
    elsif (VALID_PICKUP_HOURS.include?(@pickup_time.hour)
      TIME_OPTIONS[@pickup_time.hour]
    end
  end

  VALID_PICKUP_HOURS = (8..20).to_a

  TIME_OPTIONS = time_options

  def time_options
    [].tap {|pickup_times|
      pickup_times[:now]  = 'It is packaged and ready to go'

      (8..11).each { |i|
        pickup_times[i] => "From #{i}am"
      }

      pickup_times[12] => 'From 12pm'

      (13..20).map { |i|
         pickup_times[i] => "From #{i - 12}pm"
      }
    }
  end
end
