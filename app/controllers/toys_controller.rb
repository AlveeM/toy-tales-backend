class ToysController < ApplicationController
  def index
    toys = Toy.all.order('id')
    render json: toys
  end

  def create
    toy = Toy.create(toy_params)
    render json: toy
  end

  def update
    toy = Toy.find_by(id: params[:id])
    toy.update(toy_params)
    render json: toy
  end

  def increase
    toy = Toy.find_by(id: params[:id])
    toy.update(likes: toy.likes + 1)
    render json: toy
  end

  def destroy
    toy = Toy.find_by(id: params[:id])
    toy.destroy
    render json: { message: 'toy donated' }
  end

  private

  def toy_params
    params.permit(:name, :image, :likes)
  end
end
