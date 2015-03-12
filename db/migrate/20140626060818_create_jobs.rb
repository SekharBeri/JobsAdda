class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.text :skills
      t.integer :experience
      t.string :location
      t.string :company_name
      t.timestamps
    end
  end
end
