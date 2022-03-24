class ArticlesController < ApplicationController
     
    before_action :set_articles, only: [:show, :edit, :update, :destroy]

     

    def index
        @articles = Article.paginate(page: params[:page], per_page: 5)
        authorize @articles
    end

    def show
         
    end


    def new 
        @article = Article.new
        authorize @article
    end

    def edit
        authorize @article
    end


    def create
        @article = Article.new(article_params)
        authorize @article
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
        authorize @article
       if @article.update(article_params)
        flash[:notice] = "Article Updated Successfully"
        redirect_to (@article)

        else 
            render 'edit'
        end
    end

    def destroy
        authorize @article
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

     



  


end
