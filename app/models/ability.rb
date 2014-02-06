class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.is? :admin
      can :manage, :all
    elsif user.is? :instructor
      can :read, :all
    else
      can :read, Course
    end
  end

end
