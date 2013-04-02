class Ability

  include CanCan::Ability

  def initialize(user)

    user = User.new if user.nil?
    roles = user.roles.map(&:name)
    #
    #if Rails.env == "development"
    #  can :read, :all
    #  can :manage, :all
    #  can :update, User, :id => user.id
    #end
    #
    #if roles.empty?
    #  can :manage, :all
    #end
    #
    #if roles.include? "user"
    #  can :read, :all
    #  cannot :edit
    #  cannot :destroy
    #  can :update, User, :id => user.id
    #end
    #

    can :read, :all

    if roles.include? "admin"
      can :manage, :all
      cannot :destroy, User, :id => user.id
    end

    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
