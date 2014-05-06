ActiveAdmin.register User do
	index do                            
	    column :name  
	    column :email                  
	    column :created_at                  
	    default_actions                   
  	end 

  filter :name
  filter :email
  filter :created_at
  
end
