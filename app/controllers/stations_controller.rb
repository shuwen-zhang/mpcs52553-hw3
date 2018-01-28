class StationsController <ApplicationController 

	def index
		render "index.html.erb"
	end
	
	def show
		@station = DivvyStation.all.detect {
			|h| h["id"] == params[:id].to_i		
		} 

		return not_found if @station.nil?
	end


=begin 	Alternative 1
		if DivvyStation.all.any? {
				|h| h["id"] == params[:id]	// must make it .to_i , otherwise won't work
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