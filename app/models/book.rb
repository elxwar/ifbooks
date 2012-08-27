class Book < ActiveRecord::Base


  self.table_name = 'refinery_books'
  has_many :ifgroups, :class_name => '::Ifgroup'
  #has_many :members, :through => :ifgroups
  #accepts_nested_attributes_for :ifgroups
  #accepts_nested_attributes_for :members

  attr_accessible :title, :author, :description, :photo_id, :date, :position, :margin_image_id, :description_for_schools, :description_for_groups, :video_url
  #, :ifgroups_attributes , :books_attributes
  acts_as_indexed :fields => [:title, :author, :description]

  validates :title, :presence => true, :uniqueness => true

  belongs_to :photo, :class_name => '::Refinery::Image'
  belongs_to :margin_image, :class_name => '::Refinery::Image'

end
