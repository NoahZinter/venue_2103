class Venue

  attr_reader :name, :capacity, :patrons
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(name)
    @patrons << name
  end

  def yell_at_patrons
    yelled = []
    @patrons.each do |name|
    yelled << name.upcase
    end
    yelled
  end

  def over_capacity?
    return false if @patrons.length <= @capacity
    return true if @patrons.length > @capacity
  end

  def kick_out
    return false if @patrons.length <= @capacity
    if @patrons.length > @capacity
      until @patrons.length == @capacity do
      @patrons.pop
      end
    end
   end


end
