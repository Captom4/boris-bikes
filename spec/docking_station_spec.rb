require 'DockingStation'
require 'Bike'

describe DockingStation do
  it 'responds to Release_Bike' do
    expect(subject).to respond_to(:release_bike) 
  end
  #No longer valid
  #it 'returns a working bike' do
  #  bike = subject.release_bike
  #  expect(bike.working?).to be true 
  #end
  it 'responds to dock with an argument' do
    is_expected.to respond_to(:dock).with(1).argument
  end
  it 'It can dock a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end
  it 'return a docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      # we want to release the bike we docked
      expect(subject.release_bike).to eq bike
    end
    it 'raises an error when there are no bikes available' do
      # Let's not dock a bike first:
      # remember subject == DockingStation.new
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

  end
  describe '#dock' do
    it 'raises an error when full' do
      subject.dock(Bike.new)
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end
  describe '#dock' do
    it 'raises an error when full' do
      20.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end
end