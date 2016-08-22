class ClientsController < ApplicationController
  def new
  	@client = Client.new
  end
  def create
  	@client = Client.new(client_params)
  	if @client.save
  		flash[:success] = "New client created!"
  		redirect_to clients_path
  	else
  		render new_client_path	
  	end
  end
  def edit
  	@client = Client.find(params[:id])
  end
  def update
  	@client = Client.find(params[:id])
  	if @client.update_attributes(client_params)
  		#handle a successful update
  		flash[:success] = "Client Info updated"
  		redirect_to clients_path
  	else
  		flash[:danger] = "Update failed"
  		render edit_client_path
  	end
  end

  def show
  	@client = Client.find(params[:id])
  end
  def index
  	@clients = Client.order(:id).paginate(page: params[:page], per_page: 5)
  end
  def destroy
  	client = Client.find(params[:id])
  	client.destroy
  	flash[:success] = "One Client Info deleted"
  	redirect_to clients_path
  end

  def toggle
    client = Client.find(params[:id])
    case client.init_checker
    when true
      client.init_checker = false
    when false
      client.init_checker =true    
    end
    client.save
    redirect_to clients_path
  end

  private
	  def client_params
	  	params.require(:client).permit(:name,:xml_endpoint,:mk_apikey,:mk_endpoint)
	  end
end
