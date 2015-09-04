class Api::V1::CommentsController < ApplicationController
	
	def index
		@comments = Comment.where(manifesto_id: params['manifesto_id'])
		if @comments.any?
			render json: @comments
		else
			render json: '{404: "Not Found"}'
		end
	end

	def create
		@comment = Comment.new(author: params['author'], body: params['body'], manifesto_id: params['manifesto_id'])
		if @comment.save
			render :json => '{200: "Comment saved successfully"}'
		else
			render :json => '{403: "Forbidden"}'
		end
	end

end