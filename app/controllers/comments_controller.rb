class CommentsController < ApplicationController

	def create
   @contract = Contract.find(params[:contract_id])
   @contract.comments.create(comment_params)
	 redirect_to contract_path(@contract)
	end

  def edit
    @contract = Contract.find(params[:contract_id])
    @comment = Comment.find(params[:id])
    #@comment = @contract.comments.build
  end

	def destroy
		@contract = Contract.find(params[:contract_id])
		@comment = @contract.comments.find(params[:id])
		@comment.destroy
		redirect_to contract_path(@contract)
	end

  def update
    @contract = Contract.find(params[:contract_id])
    @comment = @contract.comments.find(params[:id])
    if @comment.update(comment_params)
       redirect_to contract_path(@contract)
    else
        render 'edit'
    end
  end

  private
  def comment_params
 	params.require(:comment).permit(
        :status,
        :next,
        :body,
    )
  end
end
