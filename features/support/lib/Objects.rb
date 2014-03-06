module Reddit
  module Page

   class Objects

    def initialize(driver)
      @browser ||= driver 
    end

    def load
     @browser.navigate.to ENV['SITE'] 
    end

    def username
     @browser.find_element(:name, 'user')
    end

    def password
     @browser.find_element(:name, 'passwd')
    end

    def login_btn
     @browser.find_element(:css, '.submit button')
    end

    def user_link
     @browser.find_element(:css, '.user a')
    end 
    
    #shortcut for selenium wait method
    def wait(timeout=10)
     Selenium::WebDriver::Wait.new(:timeout => timeout)
    end 

    def stories(num='all', order='acs')  
     @browser.find_elements(:css, '#siteTable .thing')
    end
   
   end

  end
end 

