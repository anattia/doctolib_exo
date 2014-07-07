class Public::SpecialitesController < Public::PublicController
		def index
		end

		def new
			@specialite = Specialite.new
		end

		def create
		  @specialite = Specialite.new(product_params)
		 
		  if @specialite.save
		 		redirect_to public_specialites_path, :notice => "L'ajout de la catégorie a bien était fait"
		
		   else
		   		render :new , :notice =>"Vous devez rentrer tous les champs"
		   end
		end

		
		private

		def product_params
    		params.require(:specialite).permit!
  		end

end 