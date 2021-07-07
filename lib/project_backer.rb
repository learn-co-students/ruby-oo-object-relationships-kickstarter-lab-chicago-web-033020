require_relative "project"
require_relative "backer"

class ProjectBacker
    attr_reader :backer, :project

    @@all = []

    def self.all
    @@all
    end

    def initialize(project, backer)
        @project = project
        @backer = backer
        @@all << self
    end
end