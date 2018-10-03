describe DockingStation do

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      
      expect(subject.release_bike).to eq bike
    end
  end
end