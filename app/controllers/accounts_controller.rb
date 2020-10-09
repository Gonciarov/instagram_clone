class AccountsController < ApplicationController

before_action :authenticate_account!
before_action :set_account, only: [:profile]

    def index
        

        followers_ids = Follower.where(follower_id: current_account.id).map(&:following_id)
        followers_ids << current_account.id

        @posts = Post.includes(:account).where(account_id: followers_ids).active
        @comment = Comment.new
        @follower_suggestions = Account.where.not(id: followers_ids)

        following_ids = Follower.where(follower_id: current_account.id).map(&:following_id)
        following_ids << current_account.id
    end

    def profile
        @posts = @account.posts.active
    end

    def follow_account
        follower_id = params[:follow_id]
        if Follower.create!(follower_id: current_account.id, following_id: follower_id)
            flash[:success] = "You are now following them" 
        else
            flash[:danger] = "You are not following them"
        end
        redirect_to dashboard_path
    end

    private

    def set_account
        @account = Account.find_by_username(params[:username])
    end

end
