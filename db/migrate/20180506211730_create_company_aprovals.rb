class CreateCompanyAprovals < ActiveRecord::Migration[5.2]
  def change
    create_table :company_aprovals do |t|
      t.string :name
      t.integer :admin_id
      t.text :note

      t.timestamps
    end
  end
end
