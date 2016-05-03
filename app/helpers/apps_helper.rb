module AppsHelper

	def getSex(user)
		if current_user.sex == "Feminin"
	    	"Féminin"
	    else
	    	"Masculin"
	    end
	end

end
