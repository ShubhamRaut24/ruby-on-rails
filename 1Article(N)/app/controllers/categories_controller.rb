class CategoriesController <ApplicationController

    before_action :set_user, only: [:show, :edit, :update, :destroy]
    before_action :require_admin, except: [:index, :show]

    def new
        @category = Category.new
    end

    def show
        @category = Category.find(params[:id])
    end

    def index 
        @categories = Category.paginate(page: params[:page], per_page: 5)
    end

    def update
        if @category.update(category_params)
          flash[:notice] = "Your Category was successfully updated"
          redirect_to categories_path
        else
          render 'edit'
        end
        end

    def create
        @category = Category.new(category_params)
        if @category.save
            flash[:noitce] = "Category Saved Successfully"
            redirect_to categories_path  

        else
            render 'new'
        end
    end

    def destroy
        @category.destroy 
        flash[:alert] = "Your Category was successfully Deleted"
        redirect_to categories_path  
      end
    
    private

    def set_user
        @category = Category.find(params[:id])
      end


    def category_params
        params.require(:category).permit(:name)
    end

    def require_admin
        if !(logged_in? && current_user.admin?)
          flash[:alert] = "Only admins can perform that action"
          redirect_to categories_path
        end
      end
end