class AcceptedOfferPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    record.offer.user != user
  end

  def destroy?
    record.user == user
  end
end
