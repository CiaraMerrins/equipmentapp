class PostsController < ApplicationController

def create
     @item = Item.find params[:item_id]
     @post = @item.posts.create params[:post]
     @post.user_id = @current_user.id
     @post.save
	 respond_to do |format|
	 format.html { redirect_to @item }
    	end
end


end
