require 'spec_helper'

describe FoodRunners::Food do
  let(:food_types) { [FoodRunners::FoodType::RAW_INGREDIENTS,
                      FoodRunners::FoodType::INDIVIDUALLY_PACKAGED,
                      FoodRunners::FoodType::PREPARED_FOODS,
                      FoodRunners::FoodType::BAKED_GOODS
  ] }
  let(:people_donation_will_feed) { 5 }
  let(:will_fit_in_car) { true }
  let(:short_description) { 'tomatoes, lunchboxes, tray of tacos, croissants'}
  let(:other_info) { 'Please ring the bell' }
  subject { FoodRunners::Food.new(food_types, people_donation_will_feed, will_fit_in_car, short_description, other_info) }

  let(:formatted_food_types) { ['Raw ingredients (e.g Peppers, Eggplant)',
                                'Individually packaged, ready to eat (e.g. Sandwiches, Salads, Boxed lunches)',
                                'Prepared foods (e.g. Lasagna)',
                                'Baked goods (e.g. Pastries, Breads)'
  ] }

  it 'returns food types in Food Runner format' do
    expect(subject.food_types).to eq formatted_food_types
  end
end

