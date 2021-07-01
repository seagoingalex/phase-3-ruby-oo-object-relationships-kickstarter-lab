class Backer 

    attr_reader :name
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        # ProjectBacker.all
        # binding.pry
        ProjectBacker.all.select{|backed_project| backed_project.backer == self}.map{|backed_project| backed_project.project}
    end

end

   