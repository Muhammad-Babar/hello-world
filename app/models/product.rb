class Product < ActiveRecord::Base
  attr_accessible :name, :price, :term
  belongs_to :user
  attr_accessor :term
  validates :name, presence: true, length: {minimum: 4}
  validates :price, presence: true
  # before_create :blah
  after_create :normalize_name
  private
      def checkresult
      p "Invoked"
    end
    def normalize_name
      self.name = self.name.downcase.titleize
    end
end
