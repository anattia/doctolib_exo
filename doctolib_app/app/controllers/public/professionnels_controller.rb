class Public::ProfessionnelsController < Public::PublicController

		before_action :find_professionnel
		def index
			@professionnels = Professionnel.all
		end

		def edit
		end


		def destroy
			if @professionnel.destroy
					redirect_to public_root_path
			end
		end

		def show
		end

		def new
			@professionnel = Professionnel.new
		end

		def create
		  @professionnel = Professionnel.new(product_params)
		 
		  if @professionnel.save
		 		redirect_to public_root_path
		
		   else
		   		render :new , :notice =>"Vous devez rentrer tous les champs"
		   end
		end


		def find_professionnel
  		@professionnel = Professionnel.find(params[:id]) if params[:id]
  	end

		private

		def product_params
    		params.require(:professionnel).permit!
  	end

  	



end
