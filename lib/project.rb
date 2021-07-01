class Project

    @@all = []

    def self.all
        @@all
    end

    attr_reader :title

    def initialize title
        @title = title
        @@all << self
    end

    def add_backer backer
        #create a new PB, associate the project with this project
        ProjectBacker.new(self,backer)
    end

    def backers 
        ProjectBacker.all.select{|pb| pb.project == self}.map{|pb| pb.backer}
    end
end