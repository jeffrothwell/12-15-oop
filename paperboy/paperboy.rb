class PaperBoy

  def initialize (name)
    @name = name
    @experience = 0
    @earnings = 0
  end

  def quota
    50.0 + (@experience/2.0)
  end

  # Using the .abs method we don't need to worry if start_address > end_address
  def deliver(start_address, end_address)
    #store the number of papers in a local variable
    papers_delivered = (start_address - end_address).abs
    if papers_delivered == quota
      @earnings += papers_delivered * 0.25
    elsif papers_delivered < quota
      @earnings += papers_delivered * 0.25
      @earnings -= 2.0
    else  #for those over quota, give the standard .25 for all, plust th extra .25 for all above quota
      @earnings += papers_delivered * 0.25
      @earnings += (papers_delivered - quota) * 0.25
    end
    @experience += papers_delivered
  end

  def report
    "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings} so far!"
  end

end

#initialize a PaperBoy named Adam
adam = PaperBoy.new("Adam")

#send him on a few deliveries, first right at quota, then above, then below
adam.deliver(130, 180)
adam.deliver(100, 180)
adam.deliver(100, 160) #his quota at this point would be quote high
# whoever set up this quota is a mean boss - it grows too fast!

# let's have Adam tell us how he's doing
puts adam.report
