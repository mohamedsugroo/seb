class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :job_sector
      t.decimal :hourly_rate
      t.string :payment_method
      t.string :payment_date
      t.decimal :number_of_hours
      t.integer :company_id
      t.integer :category_id

      t.timestamps
    end
  end
end
