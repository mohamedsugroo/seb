class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.integer :job_id
      t.string :phone_number
      t.string :first_line
      t.string :post_code

      t.timestamps
    end
  end
end
