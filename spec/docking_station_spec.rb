require 'DockingStation'
require 'Bike'

  describe DockingStation do
    
    describe '#dock' do
    it 'error will will display when full' do
    subject.capacity.times { subject.dock Bike.new }
    expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    
  end
 end
end
describe 'initialization' do
  subject { DockingStation.new }
  let(:bike) { Bike.new }
  it 'defaults capacity' do
    described_class::DEFAULT_CAPACITY.times do
      subject.dock(bike)
    end
    expect{ subject.dock(bike) }.to raise_error 'Docking station full'
  end
end