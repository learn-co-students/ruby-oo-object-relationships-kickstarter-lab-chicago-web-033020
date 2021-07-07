require_relative "backer"
require_relative "project_backer"

class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        array = []
        ProjectBacker.all.select do |instance|
            if instance.project == self
                array << instance.backer
            end
        end
    array
    end
end