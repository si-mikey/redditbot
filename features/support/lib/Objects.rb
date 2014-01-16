module Reddit
  module Page

   module Objects

    SITE_URL = 'http://www.reddit.com/'

    def self.username
     $browser.find_element(:name, 'user')
    end

    def self.password
     $browser.find_element(:name, 'passwd')
    end

    def self.login_btn
     $browser.find_element(:css, '.submit button')
    end

    def self.user_link
     $browser.find_element(:css, '.user a')
    end 
    
    #shortcut for selenium wait method
    def self.wait(timeout=10)
     Selenium::WebDriver::Wait.new(:timeout => timeout)
    end 

    def self.stories(num='all', order='acs')  
     $browser.find_elements(:css, '#siteTable .thing')
    end
   
   end

  end
end 

