class CategoriesController <ApplicationController

    def new
        @category = Category.new
    end

    def show
        @category = Category.find(params[:id])
    end

    def index 
        @categories = Category.paginate(page: params[:page], per_page: 5)
    end

    def create
        @category = Category.new(category_params)

        if @category.save
            flash[:noitce] = "Category Saved Successfully"
            redirect_to @category  

        else
            render 'new'
        end
    end



    private


    def category_params
        params.require(:category).permit(:name)
    end
end