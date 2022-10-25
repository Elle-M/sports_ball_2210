class Team
  attr_reader :team_name, :city, :roster, :total_value

  def initialize(team_name, city)
    @team_name = team_name
    @city = city
    @roster = []
  end

  def player_count
    player_count = 0
  end  
    
  def add_player(player)
    @roster << player
  end

  def long_term_players
    if @contract_length >= 25 
    puts player
    end                  
  end

  def short_term_players
    if @contract_length <= 24 
    puts player
    end
  end

  def total_value
    @monthly_cost * @contract_length
  end
end

  # def details
  #   {:total_value => 85200000, 
  #   :player_count => 4}
  # end

  # def average_cost_of_player
  #   @total_value / @player_count
  # end 

  # def players_by_last_name
  #   if player.split.count > 1
  #     player.split.last
  #   end
  # end
        
