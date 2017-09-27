class CategoriesController < ApplicationController
  before_filter :authorize_user, only: [:show, :edit, :update, :destroy]

  # GET /categories
  # GET /categories.json
  def index
    @categories  = current_user.categories
  end

  # GET /categories/1
  # GET /categories/1.json
 

  # GET /categories/new
  def new
    @category = current_user.categories.build
  end

  # GET /categories/1/edit
  def edit
    @category = current_user.categories.find(params[:id])
  end

  # POST /categories
  # POST /categories.json
  def create
    @category = current_user.categories.build(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to categorias_index_path, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json
  def update
    @category = current_user.categories.find(params[:id])
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to categorias_index_path, notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
   @category = current_user.categories.find(params[:id])
      @category.destroy
      redirect_to grupos_index_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:descricao, :user_id)
    end
      def authorize_user
      unless current_user
        redirect_to root_path, alert:"You need to login to continue."
      end
    end
end
