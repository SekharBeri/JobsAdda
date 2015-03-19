class Candidate < ActiveRecord::Base
has_secure_password
has_many :candidates_jobs
has_many :jobs, through: :candidates_jobs

validates :first_name, presence: true 


  def self.authenticate(email,password)
    candidate = find_by_email(email)
    candidate1 = find_by_password(password)
    return candidate if candidate && candidate1
  end 
  
   def applied_job(job)
      if CandidatesJob.where(candidate_id: id, job_id: job).present?
        return true
      else
        return false
      end 
  end
    
 end
