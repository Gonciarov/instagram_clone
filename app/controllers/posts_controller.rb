class PostsController < ApplicationController

    def new
        @post = Post.new
        @post.account_id = current_account.id if account_signed_in?
    end
    def show
    end

    def create
        @post = Post.new(post_params)

        if @post.save
            redirect_to dashboard_path
        else
            redirect_to new_post_path
        end
    end

    private

    def post_params
        params.require(:post).permit(:image, :image_cache)
    end
end