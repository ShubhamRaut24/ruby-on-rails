class CategoryPolicy < ApplicationPolicy

  attr_reader :user, :category
  
  class Scope < Scope
    def initialize(user, scope)
      @user  = user
      @scope = scope
    end

    def resolve
      if user.admin?
        scope.all
      else
        scope.where(id: 1)
      end
    end

    private

    attr_reader :user, :scope
  end


  

  def initialize(user, category)
    @user = user
    @category = category
  end

  def index?
    @user!= nil
  end

  def show?
    @user!= nil
  end

  def new?
    create?
  end

  def create?
    user.admin
  end

  
def edit?
    update?
  end

  def update?
    user.admin
  end

  def destroy?
    @user.admin
  end
end
