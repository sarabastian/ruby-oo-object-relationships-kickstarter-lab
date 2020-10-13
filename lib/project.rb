require 'pry'

class Project

    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
    @backer = []
        ProjectBacker.all.map do |project|
    if project.project == self
       @backer << project.backer
        end
    end
    @backer
    end


end
