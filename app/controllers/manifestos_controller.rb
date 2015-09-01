class ManifestosController < ApplicationController
	
	def index
		@manifestos = Manifesto.all
		render json: @manifestos
	end

	def show
		@manifesto = Manifesto.find(params['id'])
		render json: @manifesto
	end

	def create
		@manifesto = Manifesto.new(name: params['name'], organizer: params['organizer'])
		if @manifesto.save
			render :json => '{success: "Manifesto successfully created"}'
		else
			render :json => '{failure: "Manifesto not created"}'
		end
	end

	def destroy
    @manifesto = Manifesto.find(params[:id])
    if @manifesto.destroy
    	render :json => '{success: "Manifesto successfully destroyed"}'
    else
    	render :json => '{failure: "Manifesto not destroyed"}'
    end
	end

	def trending
		@manifestos = Manifesto.trending
		if @manifestos
			render json: @manifestos
		else
			render json: '{404: "Not Found"}'
		end
	end

	def discover
		@manifestos = Manifesto.discover
		if @manifestos
			render json: @manifestos
		else
			render json: '{404: "Not Found"}'
		end
	end

end