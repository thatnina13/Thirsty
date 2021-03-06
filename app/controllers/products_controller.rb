class ProductsController < ProtectedController
  # before_action :get_water, only: [:create]
  before_action :set_product, only: [:show, :update, :destroy]

  # GET /products
  def index
    @products = Product.all

    render json: @products
  end

  # GET /products/1
  def show
    render json: Product.find(params[:id])
  end

  # POST /products
  def create
    @product = current_user.products.build(product_params)

    if @product.save
      render json: @product, status: :created, location: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /products/1
  def update
    # @product = current_user.product.find(params[:id])

    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = current_user.products.find(params[:id])
    end

    # def get_water
    #   @footprint = Footprint.find(:id)
    # end

    # Only allow a trusted parameter "white list" through.
    def product_params
      params.require(:product).permit(:name, :unit, :quantity, :user_id)
    end
end
