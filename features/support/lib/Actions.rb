module Reddit
 module Bot
  
  class Actions

		Objects = Reddit::Page::Objects		
		
    def goto_site
      $browser.navigate.to Objects::SITE_URL 
    end

    def enter_username(username)
      Objects.username.send_keys(username)
    end

    def enter_password(password)
      Objects.password.send_keys(password)
    end

    def submit_login
      Objects.login_btn.click
    end     

    def logged_in?
      Objects.wait.until {!!(Objects.user_link.text.match $bot['name'])}
    end 

    def upvote_story 
      Objects.stories
    end


  end 
 
 end
end
