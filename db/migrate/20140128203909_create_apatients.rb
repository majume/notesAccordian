class CreateApatients < ActiveRecord::Migration
  def change
    create_table :apatients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :c_number
      t.date :date_of_admission

      t.timestamps
    end
  end
end
