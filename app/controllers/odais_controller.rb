class OdaisController < ApplicationController
  before_action :find_odai, only: [:show, :destroy, :edit, :update]

  def odai
    @odai = Odai.order("RANDOM()").first
  end

  def index
    @odais = Odai.all.order("created_at DESC")
  end

  def show

  end

  def new
    @odai = Odai.new
  end

  def create
    @odai = Odai.new(odai_params)
    if @odai.save
      flash[:success] = "お題が作成されました！"
      redirect_to @rhetoric
    else
      render 'new'
    end

  end

  def edit
  end

  def update
    if @odai.update(odai_params)
      flash[:success] = "お題が編集されました！"
      redirect_to @odai
    else
      render 'edit'
    end
  end

  def destroy
    @odai.destroy
    redirect_to root_path

  end

    private

  def odai_params
    params.require(:odai).permit(:content, :picture)
  end

  def find_odai
    @odai = Odai.find(params[:id])
  end

end
