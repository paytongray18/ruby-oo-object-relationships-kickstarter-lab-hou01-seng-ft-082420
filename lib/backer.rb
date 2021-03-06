class Backer

   attr_reader :name, :project, :backer
   
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        (ProjectBacker.all.select {|pb| pb.backer == self}).collect{|p| p.project}
    end

end