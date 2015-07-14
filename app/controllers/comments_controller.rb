class CommentsController < ApplicationController
  def index
    @commentable = find_commentable
    @comments = @commentable.comments
    render json: @comments
  end

  def create
    @commentable = find_commentable
    @comment = @commentable.comments.new(comment_params)
    if @comment.save
      render json: @comment
    else
      render(
        json: @comment.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  private
  def find_commentable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end

  def comment_params
    params.require(:comment).permit(:content, :commentable_id, :commentable_type)
  end

end
