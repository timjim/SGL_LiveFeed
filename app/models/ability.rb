class Ability
  include CanCan::Ability

  def initialize(user)

    unless user
      can :index
      cannot :feed
    else
      can :feed
      case user.role
      when 'admin'
        can :access, :rails_admin # grant access to rails_admin
        can :dashboard
      end
    end
  end

end
