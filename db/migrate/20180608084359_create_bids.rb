class CreateBids < ActiveRecord::Migration[5.2]
  def change
    create_table :bids do |t|
      t.references :contractor, foreign_key: true
      t.references :job, foreign_key: true
      t.decimal :price
      t.integer :numberofhours
      t.text :proposal

      t.timestamps
    end
  end
end
