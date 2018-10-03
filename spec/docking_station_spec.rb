require 'docking_station'

describe DockingStation do

  describe '#dock' do
    it 'raises an error when full' do
      20.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end
end