# A Person class that is the "root" of the class hierarchy

# Attributes
# first_name
# last_name
# full_name

class Person
  def initialize first_name,last_name,full_name
    attr_writer :first_name, :last_name, :full_name

    @first_name = first_name
    @last_name = last_name
    @full_name = full_name
  end
end

class Player < Person
  def initialize health=20,strength=5,alive=true
    @health = health
    @strength = strength
    @alive = alive if health>=0
  end

  def health
    @health
  end

  def strength
    @strength
  end

  def alive
    @alive
  end

  def take_damage attack_strength
    @health -= attack_strength
  end

  def attack player
    player.take_damage @strength
  end
end

# tom = Player.new 100, 10
# jerry = Player.new 200, 20

# Methods
# take_damage(attack_strength): subtract the attack_strength from the recievers health.
# attack(player): call the player's take_damage method passing the attackers strength as an argument.

# tom.attack jerry
# p jerry.health

class Knight < Player
  def initialize health=40, strength=7
    super
  end
end

class Wizard < Player
  def initialize health=20, strength=75
    super
  end
end

arthur = Knight.new
oz = Wizard.new

arthur.attack oz
p oz.health

# Knight

# A Knight will be a subclass of the Player class.

# It's default health will be 50
# It's default strength will be 7

# Wizard

# A Wizard will be a subclass of the Player class.

# It's default health will be 20
# It's default strength will be 75