class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :department
      t.string :sec
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
