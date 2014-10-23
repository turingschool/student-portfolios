class ProjectsController < ApplicationController  
	before_action :require_user
	before_action :set_project, only: [:show]

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		if @project.save
			redirect_to :root
		else
			render :new
		end
	end

	def show
	end

	private

	def project_params
		params.require(:project).permit(:name, :subtitle, :description, :github_url, :live_url, :user_id)
	end

	def require_user
		unless current_user
			redirect_to root_path
		end
	end

	def set_project
		@project = current_user.projects.find(params[:id])
	end
end
