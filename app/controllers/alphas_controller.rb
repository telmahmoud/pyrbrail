class AlphasController < ApplicationController
  before_action :set_alpha, only: [:show, :edit, :update, :destroy]

  # GET /alphas
  # GET /alphas.json
  def index
    @alphas = Alpha.all
  end

  # GET /alphas/1
  # GET /alphas/1.json
  def show
  end

  # GET /alphas/new
  def new
    @alpha = Alpha.new
  end

  # GET /alphas/1/edit
  def edit
  end

  # POST /alphas
  # POST /alphas.json
  def create
    # debugger prevent execution and debug
    # debugger
    @alpha = Alpha.new(alpha_params)
    @alpha.user = User.first
    if @alpha.save
      flash[:notice] = "article was successfully created"
      redirect_to alpha_path(@alpha)
    else
      render 'new'
    end
  end

  # PATCH/PUT /alphas/1
  # PATCH/PUT /alphas/1.json
  def update
    if @alpha.update(alpha_params)
      flash[:notice] = "article was successfully updated"
      redirect_to alpha_path(@alpha)
    else
      render 'edit'
    end
  end

  # DELETE /alphas/1
  # DELETE /alphas/1.json
  def destroy
    @alpha.destroy
    flash[:notice] = "article was successfully deleted"
    redirect_to alphas_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alpha
      @alpha = Alpha.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def alpha_params
      params.require(:alpha).permit(:title , :description)
    end
end
