class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    # Can READ anything
    cannot? :read, Day

    if user.persisted? # in db, so logged in
      # Can MANAGE (create, read, update, destroy, etc.) own Post
      can :manage, Day, user: user

    end
  end
end
