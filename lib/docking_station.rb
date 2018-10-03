class DockingStation
  
  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end
end