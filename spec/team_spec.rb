require './lib/player'
require './lib/team'

RSpec.describe Team do
  before(:each) do
    @team = Team.new("Dodgers", "Los Angeles")
    @player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    @player_2 = Player.new("Kenny DeNunez", 500000, 24)
    @player_3 = Player.new("Alan McClennan", 750000, 48)
    @player_4 = Player.new("Hamilton Porter", 100000, 12)
    @players = []
    @team.add_player(@player_1)
    @team.add_player(@player_2)
    @team.add_player(@player_3)
    @team.add_player(@player_4)
  end

  it '#initialize' do
    expect(@team).to be_an_instance_of(Team)
  end

  it 'has long term players' do
    expect(@team.long_term_players).to eq([@player_1, @player_3])
  end

  it 'has short term players' do
    expect(@team.short_term_players).to eq([@player_2, @player_4])
  end

  it 'has total value' do
    expect(@team.total_value).to eq(85200000)
  end

  it 'has team details' do
    expect(@team.details).to eq({"total_value" => 85200000, "player_count" => 4})
  end
end
