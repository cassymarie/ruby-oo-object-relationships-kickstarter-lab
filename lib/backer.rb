require_relative './project_backer.rb'
require_relative './project.rb'

class Backer < ProjectBacker
     attr_reader :name

     def initialize(name)
          @name = name
     end

     def back_project(project)
          ProjectBacker.new(project, self)
     end

     def backed_projects
          list = []
          Project.all.each do |project|
               if project.backer == self
                    list << project.project
               end
          end
          list
     end

end
