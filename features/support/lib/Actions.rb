module Reddit
 module Bot
  
  class Actions

   def initialize(objects)
    @objects = objects
   end

    def enter_username
     @objects.username.send_keys(@objects.username)
    end

    def enter_password
     @objects.password.send_keys(@objects.password)
    end

    def submit_login
     @objects.login_btn.click
    	
    end     

  end 
 
 end
end
