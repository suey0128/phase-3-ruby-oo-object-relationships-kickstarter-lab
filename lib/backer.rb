class Backer

    @@all = []

    def self.all
        @@all
    end

    attr_reader :name

    def initialize name
        @name = name
        @@all << self
    end

    def back_project project
        #create a new PB, associate the project with this backer
        ProjectBacker.new(project,self)
    end

    def backed_projects
        #get all the PBs associated
        ProjectBacker.all.select{|pb| pb.backer == self}.map{|pb| pb.project}
    end

end