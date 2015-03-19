class AddPasswordSecureColumnToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :password_digest, :string
  end
end
