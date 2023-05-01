Dir[File.join(File.dirname(_FILE_),"../page/*_page.rb.")].each {|file| require file}

module Pages
    def users
        @user ||= User.new
    end
end