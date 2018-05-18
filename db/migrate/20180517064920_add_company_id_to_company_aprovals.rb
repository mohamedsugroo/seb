class AddCompanyIdToCompanyAprovals < ActiveRecord::Migration[5.2]
  def change
    add_column :company_aprovals, :company_id, :integer
  end
end
