class JobsController < ApplicationController
  def index
    @jobs = Job.all
    if session[:candidate].present?
      @candidate = Candidate.find(session[:candidate])
    else
      @candidate = nil
    end
  end
  
  def new
      @job=Job.new
  end
  def create
      @job=Job.new(job_params)
      @job.save
      redirect_to jobs_path
  end
  
  def show
    @job = Job.find(params[:id])
  end
  def edit
  end
  
  private
  def job_params
      params.require(:job).permit(:title, :description, :skills, :experience, :location, :company_name)
  end
  
end
