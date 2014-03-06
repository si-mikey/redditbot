module Reddit
 module Bot
 
  class Actions 

    attr_accessor :name

    def initialize(objects)
      @objects = objects
    end

    def load 
      @objects.load 
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

    def logged_in?
      @objects.wait.until {!!(@objects.user_link.text.match self.name)}
    end 

    def upvote_story 
      @objects.stories
    end


  end 
 
 end
end
