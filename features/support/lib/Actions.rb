module Reddit
 module Bot
  
  class Actions

   def initialize(objects)
    @objects = objects
   end

    def goto_site
     $browser.navigate.to ENV['MAIN_URL']
    end

    def enter_username(username)
     @objects.username.send_keys(username)
    end

    def enter_password(password)
     @objects.password.send_keys(password)
    end

    def submit_login
     @objects.login_btn.click
    end     

  end 
 
 end
end
