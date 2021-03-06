require 'DockingStation'
require 'Bike'

  describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    subject.dock Bike.new
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'does not release broken bikes' do
  bike = double(:bike, broken?: true)
  subject.dock bike
  expect {subject.release_bike}.to raise_error 'No bikes available'
end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'releases working bikes' do
  bike = double(:bike, broken?: false)
  subject.dock bike
  expect(subject.release_bike).to be bike
end

  describe 'dock' do
    it 'raises an error when full' do
      subject.capacity.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end
end