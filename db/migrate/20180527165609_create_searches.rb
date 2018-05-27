class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :keyword
      t.string :location

      t.timestamps
    end
  end
end
