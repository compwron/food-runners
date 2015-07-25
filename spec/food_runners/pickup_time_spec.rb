require 'spec_helper'

describe FoodRunners::PickupTime do
  let(:day) { FoodRunners::PickupDay::TOMORROW }
  let(:hour) { 13 }
  subject { FoodRunners::PickupTime.new(day, hour) }

  it 'stores day and hour in Food Runners UI format' do
    expect(subject.day).to eq 1
    expect(subject.hour).to eq "From 1pm"
  end

  # context 'with summoning a pickup for an hour that is this hour'

  context 'with pickup today' do
    let(:day) { FoodRunners::PickupDay::TODAY }
    it 'allows same day pickup' do
      expect(subject.day).to eq 0
    end
  end

  context 'with invalid day' do
    let(:day) { 42 }
    it 'errors on creation of invalid pickup date' do
      expect { subject }.to raise_error FoodRunners::Error::InvalidPickupDate
    end
  end

  context 'with invalid time' do
    let(:hour) { 2 }
    it 'errors on creation of invalid pickup time' do
      expect { subject }.to raise_error FoodRunners::Error::InvalidPickupHour
    end
  end
end
