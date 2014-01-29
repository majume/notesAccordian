class CreatePnotes < ActiveRecord::Migration
  def change
    create_table :pnotes do |t|
      t.text :para1
      t.text :para2
      t.text :para3
      t.integer :patient_id

      t.timestamps
    end
  end
end
