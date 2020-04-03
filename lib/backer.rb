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
    projects = []
    ProjectBacker.all.each do |project_backer|
      if project_backer.backer == self
         projects << project_backer.project
      end
    end
    projects
  end

end

# book = Project.new('Ruby, Ruby, and More Ruby')
# magic = Project.new('Magic The Gathering Thing')
# karaoke = Project.new('Karaoke')
# steven = Backer.new('Steven')
# spencer = Backer.new('Spencer')
# meryl = Backer.new('Meryl')

# meryl.back_project(karaoke)
# steven.back_project(karaoke)
# steven.back_project(magic)
# spencer.back_project(book)
# meryl.back_project(book)
# meryl.backed_projects

#binding.pry