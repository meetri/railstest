class Ability
  include CanCan::Ability
  
  def initialize(user)
    
    alias_action :share, :to => :read
      
    if user.nil?
      can :read, Home
    else if user.admin == 1
      can :manage, :all
    else        
      can :read, :all
      can :manage, User , :id => user.id
    end
      
    end
  end
end
  
