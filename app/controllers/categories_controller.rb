class CategoriesController < ApplicationController
  # before_action :set_category, only: %i[ show edit update destroy ]

  # GET /categories or /categories.json
  def index
    @categories = Category.all.order(name: :asc)
  end
  # GET /categories/1 or /categories/1.json

  # GET /categories/new
  def new
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit
    category
  end

  # POST /categories or /categories.json
  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_url, notice: t('.created')
      # format.json { render :show, status: :created, location: @category }
    else
      render :new, status: :unprocessable_entity
      # format.json { render json: @category.errors, status: :unprocessable_entity }
    end
  end

  # PATCH/PUT /categories/1 or /categories/1.json
  def update
    if category.update(category_params)
      redirect_to categories_url, notice: t('.updated')
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /categories/1 or /categories/1.json
  def destroy
    category.destroy
    redirect_to categories_url, notice: t('.destroyed'), status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def category
      @category = Category.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def category_params
      params.require(:category).permit(:name)
    end
end
