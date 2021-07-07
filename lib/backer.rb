require_relative "project"
require_relative "project_backer"

class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        array = []
        ProjectBacker.all.select do |instance|
            if instance.backer == self
                array << instance.project
            end
        end
    array
    end
end