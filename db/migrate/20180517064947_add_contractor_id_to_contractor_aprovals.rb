class AddContractorIdToContractorAprovals < ActiveRecord::Migration[5.2]
  def change
    add_column :contractor_aprovals, :contractor_id, :integer
  end
end
