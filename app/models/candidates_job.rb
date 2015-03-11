class CandidatesJob < ActiveRecord::Base
    belongs_to :candidate
    belongs_to :job
end
