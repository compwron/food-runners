module FoodRunners
  module Error
    class InvalidPickupDate < ArgumentError
    end

    class InvalidPickupHour < ArgumentError
    end
  end
end