class ProjectBacker

    @@all = []

    def self.all
        @@all
    end

    attr_reader :backer, :project

    def initialize  project, backer
        @project = project
        @backer =  backer
        @@all << self
    end

end