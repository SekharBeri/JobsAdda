class CreateCandidatesJobs < ActiveRecord::Migration
  def change
    create_table :candidates_jobs do |t|
      t.integer :candidate_id
      t.integer :job_id

      t.timestamps
    end
  end
end
