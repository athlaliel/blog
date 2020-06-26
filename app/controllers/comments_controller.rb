class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/articles/#{comment.article.id}"  # コメントと結びつくツイートの詳細画面に遷移する
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, article_id: params[:article_id])
  end
end
