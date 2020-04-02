class Project

  attr_reader :title

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    project_array =[]
    ProjectBacker.all.each do |pb|
      if pb.project == self
        project_array << pb.backer
      end
    end
    project_array
  end

end
