module Reddit
  module Page

   class Objects

    def initialize(wd)
     @wd = wd
    end

    def username
     @wd.find_element(:name, 'user')
    end

    def password
     @wd.find_element(:name, 'passwd')
    end

    def login_btn
     @wd.find_element(:css, '.submit button')
    end

    def user_link
     @wd.find_element(:css, '.user a')
    end 
    
    #shortcut for selenium wait method
    def wait(timeout=10)
     Selenium::WebDriver::Wait.new(:timeout => timeout)
    end 

    def stories(num='all', order='acs')  
     @wd.find_elements(:css, '#siteTable .thing')
    end
   
   end

  end
end 

