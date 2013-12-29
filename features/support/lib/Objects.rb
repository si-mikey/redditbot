module Reddit
  module Page

   class Objects

    attr_reader :main_url
    attr_accessor :username
    attr_accessor :password

    def initialize(wd)
     @wd = wd
     @main_url = 'http://www.reddit.com/'
    end

    def username
     @username =  ENV['USERNAME'] 
    end

    def password
     @password = ENV['PASSWORD']    
    end


   end

  end
end 

