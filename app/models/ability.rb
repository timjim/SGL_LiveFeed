class Ability
  include CanCan::Ability

  def initialize(user)

    unless user
      can :index
      can :create, User
      cannot :feed
    else
      can :feed
      can :index
      case user.role
      when 'admin'
        can :access, :rails_admin # grant access to rails_admin
        can :manage, User
        can :manage, Event
        can :dashboard
        can :index
      end
    end
  end

end
