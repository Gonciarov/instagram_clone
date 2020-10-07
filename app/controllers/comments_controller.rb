class CommentsController < ApplicationController
    before_action :authenticate_account!

    def create
        @pcomment = Comment.new(comment_params)
        @comment.account_id = current_account.id if account_signed_in?

        if @comment.save
            redirect_to dashboard_path
        else
            redirect_to new_post_path
        end
    end

    private

    def post_params
        params.require(:comment).permit(:comment, :post_id)
    end
end