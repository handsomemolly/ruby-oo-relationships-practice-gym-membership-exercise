class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.gym == self}
  end

  def gym_memberships
    self.memberships.map {|membership| membership.lifter}.uniq
  end

  def lifter_names
    self.gym_memberships.map {|lifter| lifter.name}
  end

  def lift_total
    self.gym_memberships.sum {|lifter| lifter.lift_total}
  end

end
