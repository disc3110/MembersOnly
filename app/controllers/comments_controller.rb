class CommentsController < ApplicationController

    def index
        @comments = Comment.all
    end

    def new
        @comment = Comment.new
    end

    def create
       @comment = Comment.new(comment_params)
        if @comment.save
            redirect_to root_path
        else
            render :new
        end
    end
    
    def destroy
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
        @comment.destroy
        redirect_to root_path
    end

    private
        def comment_params
          params.require(:comment).permit(:body, :user_id, :post_id)
        end
end