class FavoritesController < ApplicationController
  def index
    @favorites = current_user.favorites.all
    
  end

  def create
    favorite = current_user.favorites.create(post_id: params[:post_id])
    redirect_to posts_path, notice: "#{favorite.post.user.name}さんのブログをお気に入り登録しました"
  end
  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to posts_path, notice: "#{favorite.post.user.name}さんのブログをお気に入り解除しました"
  end
  def favorite_params
    params.require(:favorite).permit(:image, :image_cache, :title, :content, :user_id)
  end
end

