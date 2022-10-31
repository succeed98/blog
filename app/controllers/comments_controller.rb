class CommentsController < ApplicationController

  def create
    @article = Article.find(params[:id])
    @comment = @article.comments.create(comments_param)
    redirect_to article_path(@article)
  end

  private
  def comments_param
    params.require(:comment).permit(:commenter, :body)
  end
end
