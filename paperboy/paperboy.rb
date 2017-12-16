class PaperBoy

  def initialize (name)
    @name = name
    @experience = 0
    @earnings = 0
  end

  def quota
    50.0 + (@experience/2.0)
  end

  # I know for the deliver method the problem said assume end_address > start_address
  # using the absolute method removes this necessity

  def deliver(start_address, end_address)
    if (start_address - end_address).abs == quota
      @earnings += (start_address - end_address).abs * 0.25
    elsif (start_address - end_address).abs < quota
      @earnings += (start_address - end_address).abs * 0.25
      @earnings -= 2.0
    else  #for those over quota, give the standard .25 for all, plust th extra .25 for all above quota
      @earnings += (start_address - end_address).abs * 0.25
      @earnings += ((start_address - end_address).abs - quota) * 0.25
    end
  end

end

adam = PaperBoy.new("Adam")
p adam
