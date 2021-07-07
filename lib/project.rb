# code goes here
require 'pry'
require_relative 'backer.rb'
require_relative 'project_backer.rb'

class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backers_array = []
        ProjectBacker.all.each do |project_backer_i|
            if project_backer_i.project == self
                backers_array << project_backer_i.backer
            end
        end
        backers_array
    end
end