require 'rspec'
require './lib/venue'

describe Venue do
  describe '#initialize' do
    it 'is a venue' do
      # skip
      venue = Venue.new('Bluebird', 4)
      expect(venue).to be_a Venue
    end

    it 'can read the name' do
      # skip
      venue = Venue.new('Bluebird', 4)
      expect(venue.name).to eq 'Bluebird'
    end

    it 'can read the capacity' do
      # skip
      venue = Venue.new('Bluebird', 4)
      expect(venue.capacity).to eq 4
    end

    it 'has no patrons by default' do
      # skip
      venue = Venue.new('Bluebird', 4)
      expect(venue.patrons).to eq []
    end
  end

  # Iteration 2

  describe '#add_patron' do
    it 'returns a list of patrons' do
      # skip
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')

      expect(venue.patrons).to eq ['Mike', 'Megan', 'Bob']
    end
  end

  describe '#yell_at_patrons' do
    it 'returns a list of uppercased names' do
      # skip
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')
      expect(venue.yell_at_patrons).to eq ['MIKE', 'MEGAN', 'BOB']
    end
  end

  #Iteration 3
  describe '#over_capacity?' do
    it 'returns false when under capacity' do

      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')

      expect(venue.over_capacity?).to eq(false)
    end


  it 'returns true when over capacity' do

    venue = Venue.new('Bluebird', 4)
    venue.add_patron('Mike')
    venue.add_patron('Megan')
    venue.add_patron('Bob')
    venue.add_patron('James')
    venue.add_patron('Cat')

    expect(venue.over_capacity?).to eq(true)
  end
 end

 #Iteration 4

 describe '#kick_out' do

   it "doesn't kick patrons out when not over capacity" do

   venue = Venue.new('Bluebird', 4)
   venue.add_patron('Mike')
   venue.add_patron('Megan')
   venue.add_patron('Bob')

   expect(venue.kick_out).to eq(false)
   end

   it "kicks patrons out when over capacity by 1" do

     venue = Venue.new('Bluebird', 4)
     venue.add_patron('Mike')
     venue.add_patron('Megan')
     venue.add_patron('Bob')
     venue.add_patron('James')
     venue.add_patron('Cat')

     venue.kick_out

     expect(venue.patrons.length).to eq(4)

   end

   it "kicks patrons out when over capacity by more than 1" do

     venue = Venue.new('Bluebird', 4)
     venue.add_patron('Mike')
     venue.add_patron('Megan')
     venue.add_patron('Bob')
     venue.add_patron('James')
     venue.add_patron('Cat')
     venue.add_patron('No Goodnick')
     venue.add_patron('Ruffian')

     venue.kick_out

     expect(venue.patrons.length).to eq(4)
  end
 end


end
