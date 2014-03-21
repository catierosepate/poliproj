class CreateBios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
      t.text :description
      t.integer :candidate_id
      
      t.timestamps
    end
  end
end
