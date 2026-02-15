class Character
  def initialize(name, health, mana, attack_power, status_effects)
    @name = name
    @health = health
    @max_health = 100
    @mana = mana
    @attack_power = attack_power
    @status_effects = status_effects
  end

  public
  def attack(target)
    puts "#{@name} just attacked #{target}"
    target.take_damage(amount)
  end

  def take_damage(amount)
    puts "#{@name} just took a damage of #{amount}"
  end

  def alive?
    health > 0 ? True : False
  end

  def end_turn
    
  end
end