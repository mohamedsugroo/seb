class Contractor < ApplicationRecord
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
		   :recoverable, :rememberable, :trackable, :validatable

    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

    has_many :bids, dependent: :destroy
    has_many :qualifications, dependent: :destroy
    has_many :licences, dependent: :destroy


	def set_uref

	end

	def fullname
		"#{self.first_name} #{self.last_name}"
	end
end
