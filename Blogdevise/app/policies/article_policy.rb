class ArticlePolicy < ApplicationPolicy
  

  def index?
    @user!= nil
  end

  def new?
    @user!= nil
  end
  def create?
    @user!= nil
  end

  def show?
    @user!= nil
  end

  def edit?
    update?
  end

  def update?
    user == record.user
  end

  def destroy?
    user == record.user
  end


end
