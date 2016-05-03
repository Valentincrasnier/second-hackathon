module AppsHelper

	def getSex(user)
		if current_user.sex
	    	"Féminin"
	    else
	    	"Masculin"
	    end
	end
end
