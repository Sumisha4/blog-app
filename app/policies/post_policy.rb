class PostPolicy < ApplicationPolicy
  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  def edit?
    record.user == user
  end

  def publish?
    record.user == user
  end
end
