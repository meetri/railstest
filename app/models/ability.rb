class Ability
  include CanCan::Ability
  
  def initialize(user)
    
    unless user.nil?
      alias_action :share => :read
      
      if user.admin == 1
        can :manage, :all
      else        
        can :read, :all
        can :manage, User , :id => user.id
      end
      
    end
      
  end
end
  
