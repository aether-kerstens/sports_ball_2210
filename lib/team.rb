class Team
  attr_reader :name, :location, :players
  def initialize(name, location)
    @name = name
    @location = location
    @players = []
  end

  def add_player (player)
    @players << player
  end

  def long_term_players
    long_term = []
    @players.each do |player|
      if player.contract_length >= 30
        long_term << player
      end
    end
    long_term
  end

  def short_term_players
    short_term = []
    @players.each do |player|
      if player.contract_length <= 29
        short_term << player
      end
    end
    short_term
  end

  def total_value
    all_costs = []
    @players.each do |player|
      all_costs << player.total_cost
    end
    all_costs.sum
  end

  def player_count
    @players.count
  end

  def details
    team_details = Hash.new
    team_details["player_count"] = player_count
    team_details["total_value"] = total_value
    team_details
  end
end
