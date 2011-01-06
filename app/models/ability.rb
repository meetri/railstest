class Ability
  include CanCan::Ability
  
  def initialize(user)
    
    if user != nil && user.admin?
      can :manage, :all
    #else user != nil
    #  can :read, :all
      
    end
  end
  
end