class AddAttachmentAvatarToContractors < ActiveRecord::Migration[5.2]
  def self.up
    change_table :contractors do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :contractors, :avatar
  end
end
