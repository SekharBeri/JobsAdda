class CandidatesController < ApplicationController
  before_action :require_login, only: [:apply]
  def signup
    @candidate = Candidate.new
  end
  def signup_create
    if request.post?
      @candidate = Candidate.new(params[:candidate].permit(:first_name, :last_name, :email, :password, :password_confirmation))
     if @candidate.save
      redirect_to "/signin"
     else
      render "candidates/signup"
     end
    end 
  end   
  def signin
    if request.post?
      @candidate = Candidate.find_by(email: params[:candidate][:email])
      if @candidate && @candidate.authenticate(params[:candidate][:password])
       session[:candidate] = @candidate.id
       redirect_to "/jobs"
       else
        render 'signin'
       end
    end       
  end 
  
  def apply
    CandidatesJob.create(:candidate_id => params[:id], :job_id => params[:job_id])
    redirect_to jobs_path
  end
  
   def profile
    candidate=session[:candidate]
    
    @candidate = Candidate.find_by_id(candidate)
  
    @jobs_count=@candidate.jobs.count
   
  end
  
  def signout
    session[:candidate]=nil 
    redirect_to "/jobs"
  end
  
 
  private
  def require_login
    unless session[:candidate]
      flash[:notice]= "login first"
      redirect_to "/signin"
    end
  end  
end

