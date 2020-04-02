require 'pry'
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
    ProjectBacker.all.each do |pb|
      if pb.backer == self
         backed_array << pb.project
      end
    end
      backed_array
  end

end