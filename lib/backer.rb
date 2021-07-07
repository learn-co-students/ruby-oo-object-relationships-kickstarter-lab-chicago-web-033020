# code goes here
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

    def backed_projects
        backed_array = []
        ProjectBacker.all.each do |project_backer_i|
            if project_backer_i.backer == self
                backed_array << project_backer_i.project
            end
        end
        backed_array
    end
end