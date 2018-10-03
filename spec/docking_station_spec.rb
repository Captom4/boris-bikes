require 'DockingStation'
require 'Bike'

  describe DockingStation do
    
    describe '#dock' do
    it 'error will will display when full' do
    DockingStation::DEFAULT_CAPACITY.times do
      subject.dock Bike.new
    end
    expect { subject.dock Bike.new }.to raise_error 'Docking station full'
  end
end
end