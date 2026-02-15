class Ability
  def initialize(name, mana_cost)
   @name = name 
   @mana_cost = mana_cost
  end

  public def use(caster, target)
    puts "#{caster.name} used the ability #{@name} on #{target.name}"
  end
end