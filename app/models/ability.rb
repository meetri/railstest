class Ability
  include CanCan::Ability
  
  def initialize(user)
    #user ||= User.new # guest user
    
    
    if user.admin?
      can :manage, :all
    #else user != nil
    #  can :read, :all
      
    end
  end
  
end