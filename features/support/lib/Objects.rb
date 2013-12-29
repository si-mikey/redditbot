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

   end

  end
end 

