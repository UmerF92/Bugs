class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new # guest user
    
    can :manage, :all if user.role == "manager"
    can :manage, Bug if user.role == "developer" || user.role == "qa"
    can :read, :all if user.role == "developer" || user.role == "qa"
  end
end