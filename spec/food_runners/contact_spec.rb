require 'spec_helper'

describe Contact do
  let(:company_name) { 'company name' }
  let(:donater_name) { 'donater name' }
  let(:donater_email) { 'a@b.com' }
  let(:donater_phone_number) { '5555555555' }
  let(:pickup_address) { '123 Hello St' }
  let(:zip_code) { 94110 }
  subject { FoodRunners::Contact.new(company_name, donater_name, donater_email, donater_phone_number, pickup_address, zip_code) }

  it 'stores attributes' do
    expect(subject.company_name).to eq company_name
    expect(subject.donater_name).to eq donater_name
    expect(subject.donater_email).to eq donater_email
    expect(subject.donater_phone_number).to eq donater_phone_number
    expect(subject.pickup_address).to eq pickup_address
    expect(subject.zip_code).to eq zip_code
  end

  # TODO: validate email format
  # TODO: validate zip code location in SF
end
