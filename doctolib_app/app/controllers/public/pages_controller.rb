class Public::PagesController < Public::PublicController
	before_action :find_prof
	def home
	@specialites = Specialite.all

	end

	def resulta
		if(params[:q] && !params[:q].empty?)

			@professionnels = Professionnel.full_text_search(params[:q])
		else
			@professionnels = Professionnel.all
		end


	end

	private

	
	def find_prof
		#@professionnels = Professionnel.find(params[:id]) if params[:id]
	end

end
