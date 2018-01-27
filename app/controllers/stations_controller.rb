class StationsController <ApplicationController 

	def index
		render "index.html.erb"
	end
	
	def show
		@station = DivvyStation.all.detect {
			|h| h["id"] == params[:id].to_i
		} 

=begin		return not_found if @station.nil?
=end	
	end


=begin 	Alternative 1
		if DivvyStation.all.any? {
				|h| h["id"] == params[:id]
		}
			render "show.html.erb" 
		else
			
			return render file: "public/404.html", status: :not_found
		end
=end

=begin	Alternative 2		
render 	template: "stations/#{params[:id]}"
=end			


	def not_found
		render file: "public/404.html", status: :not_found
	end

end