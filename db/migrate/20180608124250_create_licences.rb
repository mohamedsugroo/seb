class CreateLicences < ActiveRecord::Migration[5.2]
  def change
    create_table :licences do |t|
      t.string :name
      t.string :expiration_date
      t.string :number
      t.string :ltype
      t.references :contractor, foreign_key: true

      t.timestamps
    end
  end
end
