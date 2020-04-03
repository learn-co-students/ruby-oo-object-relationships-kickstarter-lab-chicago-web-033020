require 'pry'
require_relative 'backer.rb'
require_relative 'project.rb'
require_relative 'project_backer.rb'

# Backer creations
isaac = Backer.new("Isaac")
alex = Backer.new("Alex")

# Project creations
gamepac = Project.new("GamePac")
mercial = Project.new("Mercial")
bean_app = Project.new("BeanApp")

# ProjectBacker creations
isaac_gamepac = ProjectBacker.new(gamepac, isaac)
isaac_mercial = ProjectBacker.new(mercial, isaac)
alex_bean_app = ProjectBacker.new(bean_app, alex)

# Backer - backed_projects instance method creations
# isaac.backed_projects

binding.pry