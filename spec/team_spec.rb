require './lib/player'
require './lib/team'

RSpec.describe '#initialize' do
  it 'has a team' do
    team = Team.new("Dodgers", "Los Angeles")

      expect(team).to be_a Team
  end

  it 'has a team roster' do
    team = Team.new("Dodgers", "Los Angeles")
  
    expect(team.roster).to eq([])
  end     

  describe '#player_count' do
    it 'has a player count' do
      team = Team.new("Dodgers", "Los Angeles")
  
      expect(team.player_count).to eq(0)
    end 
  end    

  describe '#add_player' do
    it 'adds players' do
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)

      expect(team.roster).to include(player_1, player_2, player_3, player_4)
    end 
  end

  describe '#long_term_players' do
    it 'defines long term players' do
      team = Team.new("Dodgers", "Los Angeles")
        
      expect(team.long_term_players).to include(player_1, player_3)
    end
  end

  describe '#short_term_players' do
    xit 'defines short term players' do
      team = Team.new("Dodgers", "Los Angeles")
        
      expect(team.short_term_players).to include(player_2, player_4)
    end
  end

  describe '#total_value' do
    xit 'adds total cost' do
      team = Team.new("Dodgers", "Los Angeles")
        
      expect(team.total_value).to eq(85200000)
    end
  end

  describe '#details' do
    xit 'includes details' do
      team = Team.new("Dodgers", "Los Angeles")
        
      expect(team.details).to include(total_value)
      expect(team.details).to include(player_count)
    end
  end

  describe '#average_cost_of_player' do
    xit 'shows the total average of the players' do
      team = Team.new("Dodgers", "Los Angeles")
        
      expect(team.average_cost_of_player).to eq("$21,300,000")
    end
  end

  describe '#players_by_last_name' do
    xit 'shows players by last name' do
      team = Team.new("Dodgers", "Los Angeles")
            
      expect(team.players_by_last_name).to eq("DeNunez, McClennan, Palledorous, Porter")
    end
  end
end

