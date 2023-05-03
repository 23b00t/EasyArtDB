class CommentsController < ApplicationController
  before_action :set_item
  before_action :set_comment, only: [:update, :destroy]

  def create
    @comment = @item.comments.build(comment_params)

    if @comment.save
      redirect_to @item, notice: 'Comment was successfully created.'
    else
      render :new
    end
  end

  def update
    if @comment.update(comment_params)
      redirect_to @item, notice: 'Comment was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @comment.destroy
    redirect_to @item, notice: 'Comment was successfully deleted.'
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end

  def set_comment
    @comment = @item.comments.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:text)
  end
end
