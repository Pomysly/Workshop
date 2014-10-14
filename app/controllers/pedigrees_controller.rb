class PedigreesController < ApplicationController
  before_action :set_pedigree, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :update, :destroy]
  expose(:product)
  expose(:pedigree)
  expose(:pedigrees)
  expose(:category)

  # GET /pedigrees
  def index
    pedigrees = Pedigree.all
  end

  # GET /pedigrees/1
  def show
  end

  # GET /pedigrees/new
  def new
    pedigree = Pedigree.new
  end

  # GET /pedigrees/1/edit
  def edit
  end

  # POST /pedigrees
  def create
    pedigree = Pedigree.new(pedigree_params)

    if pedigree.save
      product.pedigrees << pedigree
      redirect_to pedigree, notice: 'Pedigree was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /pedigrees/1
  def update
    if pedigree.update(pedigree_params)
      redirect_to pedigree, notice: 'Pedigree was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /pedigrees/1
  def destroy
    pedigree.destroy
    redirect_to pedigrees_url, notice: 'Pedigree was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedigree
      pedigree = Pedigree.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pedigree_params
      params.require(:pedigree).permit(:father, :mother, :f_father, :f_mother, :m_father, :m_mother, :f_f_father, :f_f_mother, :f_m_father, :f_m_mother, :m_f_father, :m_f_mother, :m_m_father, :m_m_mother)
    end
end
