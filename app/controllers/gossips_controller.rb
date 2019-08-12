class GossipsController < ApplicationController
	  def index
	  	puts "ca pointe bien"
	  	puts params[:title]
	  	@potins = Gossip.all
	  end

	def new
		@gossip = Gossip.new
	end
	def create
		@gossip = Gossip.create(gossip_params)
		redirect_to gossips_path
		puts @gossip.title
		puts @gossip.content
	end

	 def show
	 	@gossip = Gossip.find(params[:id])
	 	@comments = @gossip.comments
	 	@comment = Comment.new(gossip_id: params[:id])
	end
	def create
		puts params[:gossip]
		@gossip = Gossip.create(gossip_params)
		redirect_to gossips_path
	end
	def edit
		@gossip = Gossip.find(params[:id])
		puts params[:id]
	end


	def update
		@gossip = Gossip.find(params[:id])
		puts "#" * 50
		puts params[:id]
		puts "#" * 50
		@gossip.update(gossip_params)
		puts @gossip.title
		puts @gossip.content
	    redirect_to gossips_path
	end

	 def destroy
	 @gossip = Gossip.find(params[:id])
	 @gossip.destroy
	 redirect_to gossips_path
	 end

	 private
	 def gossip_params
	 	params.require(:gossip).permit(:title, :content) 
	 end
end



