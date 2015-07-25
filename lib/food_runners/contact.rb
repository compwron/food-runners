module FoodRunners
  class Contact
    attr_reader :company_name,
                :donater_name,
                :donater_email,
                :donater_phone_number,
                :pickup_address,
                :zip_code

    def initialize(company_name, donater_name, email, phone_num, address, zip)
      @company_name = company_name
      @donater_name = donater_name
      @donater_email = email
      @donater_phone_number = phone_num
      @pickup_address = address
      @zip_code = zip
    end
  end
end
