require 'pry'
require_relative 'project.rb'
require_relative 'project_backer.rb'

class Backer
    attr_reader :name 

    def initialize(name)
        @name = name
    end 

    def back_project(project)
        ProjectBacker.new(project, self)
    end
    
    def projects 
        ProjectBacker.all.select do |list|
          list.backer.name == self.name
        end
    end 
    
    def backed_projects
        projects.map do |list|
          list.project
        end  
    end

end

