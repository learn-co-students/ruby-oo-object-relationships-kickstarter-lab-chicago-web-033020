require 'pry'

class ProjectBacker
  attr_reader :project, :backer

  @@all = []

  def self.all
    @@all
  end

  def initialize(project, backer)
    @project = project
    @backer = backer
    self.class.all << self
  end

end

#binding.pry