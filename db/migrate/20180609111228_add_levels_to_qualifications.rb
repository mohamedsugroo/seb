class AddLevelsToQualifications < ActiveRecord::Migration[5.2]
  def change
    add_column :qualifications, :level, :string
    add_column :qualifications, :date_issued, :date
  end
end
