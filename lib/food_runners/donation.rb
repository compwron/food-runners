class Donation
  # https://github.com/watir/watir-webdriver
  # brew install phantomjs
  require 'watir-webdriver'

  FOOD_RUNNERS_URL = 'http://app.foodrunners.org/#/donations/new'

  def initialize
  end

  def submit!
    b = fill_fields
    press_submit!(b)
  end

  def errors
    errors = b.text.split("\n").select{|l| l.include?('is required')}
  end

  private

  def fill_fields
    b = Watir::Browser.new :phantomjs
    b.goto FOOD_RUNNERS_URL

    fill_company_name(b)
    fill_pickup_day(b)
    fill_pickup_time(b)
    # etc
    b
  end

  def fill_company_name(b)
    # broken. Not a text field??
    b.text_field(name: 'companyName').exists?
  end

  def fill_pickup_day(b)
    pickup_day = b.select_list(:id, "pickupDay")
    pickup_day.select_value(pickup_time.day) # will raise an exception if this value does not exist
  end

  def fill_pickup_time(b)
    pickup_time = b.select_list(:id, "pickupTime")
    pickup_time.select_value(pickup_time.time)
  end

  def press_submit(b)
    btn = b.button :value => 'Submit'
    btn.click
  end
end


