class Player

  attr_reader :gold_coins, :health_points, :lives
  attr_writer :gold_coins, :health_points, :lives

  def initialize(gold_coins, health_points, lives)
    @gold_coins = gold_coins
    @health_points = health_points
    @lives = lives
  end

  def level_up
    @lives += 1
    puts @lives
  end

  def collect_treasure
    @gold_coins += 1
    if @gold_coins % 10 == 0
      level_up
    end
  end

  def do_battle(damage)
    @health_points -= damage
    if @health_points <= 1
      @lives -= 1
      @health_points = 10
    end
    if @lives < 0
      restart
    end
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end
end

player1 = Player.new(0, 10, 5)
player2 = Player.new(0, 10, 5)
player3 = Player.new(0, 10, 5)


puts player1.health_points
