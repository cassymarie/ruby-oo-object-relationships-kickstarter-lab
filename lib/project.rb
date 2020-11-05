require_relative './project_backer.rb'

class Project < ProjectBacker
     attr_reader :title
     # @@all = []

     def initialize(title)
          @title = title
     end

     def add_backer(backer)
          ProjectBacker.new(self, backer)
     end

     def backers
          ProjectBacker.all.select do |project|
               project.backer == self
          end
     end

     def backers
          list = []
          Backer.all.each do |backer|
               if backer.project == self
                    list << backer.backer
               end
          end
          list
     end

end