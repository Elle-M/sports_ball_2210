require 'rspec'
require './lib/player'

RSpec.describe '#initialize' do
  it 'has a player' do
    player = Player.new("Michael Palledorous" , 1000000, 36)

    expect(player).to be_a Player
  end

  it 'has a contract length' do
    player = Player.new("Michael Palledorous" , 1000000, 36)

    expect(player.contract_length).to eq(36)
  end

  it 'has a monthly cost' do
    player = Player.new("Michael Palledorous" , 1000000, 36)

    expect(player.monthly_cost).to eq(1000000)
  end


  describe '#first_name' do
    it 'has a first name' do
      player = Player.new("Michael Palledorous" , 1000000, 36)

      expect(player.first_name).to eq("Michael")
    end
  end

  describe '#last_name' do
    it 'has a last name' do
      player = Player.new("Michael Palledorous" , 1000000, 36)

      expect(player.last_name).to eq("Palledorous")
    end
  end

  describe '#player_count' do  
    it 'has a total cost' do
      player = Player.new("Michael Palledorous" , 1000000, 36)

      expect(player.total_cost).to eq(36000000)
    end
  end

  describe '#set_nickname' do
    it 'has a nickname' do
      player = Player.new("Michael Palledorous" , 1000000, 36)
      nickname = "Squints"

      expect(player.set_nickname!(nickname)).to eq(nickname)
    end
  end
end


