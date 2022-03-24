class ArticlesController < ApplicationController

    before_action :set_articles, only: [:show, :edit, :update, :destroy]

    before_action :require_user, except: [:show, :index]
    before_action :require_same_user, only: [:edit, :update, :destroy]

    def show
        # @article = Article.find(params[:id]) applying DRY principle here
    end

    def index
        @articles = Article.paginate(page: params[:page], per_page: 5)
    end

    def new 
        @article = Article.new
    end

    def edit
        # @article = Article.find(params[:id])
    end


    def create
        @article = Article.new(article_params)
        # render plain: @article.inspect
         
        @article.user = current_user

       if @article.save
        flash[:notice] = "Article Saved Successfully"
        # redirect_to article_path(@article) same as below
        redirect_to (@article)
       
       else
          render 'new'
       end
    end

    def update
        # @article = Article.find(params[:id])
       if @article.update(article_params)
        flash[:notice] = "Article Updated Successfully"
        redirect_to (@article)

        else 
            render 'edit'
        end
    end

    def destroy
        # @article = Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
    end

    private 

    def set_articles
        @article = Article.find(params[:id])
    end

    def article_params
        params.require(:article).permit(:title, :description, category_ids: [])
    end

    def require_same_user
        if current_user != @article.user && !current_user.admin?
          flash[:alert] = "You can only edit or delete your own article"
          redirect_to @article
        end
      end



  


end
