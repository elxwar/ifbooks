class Book < ActiveRecord::Base


  self.table_name = 'refinery_books'
  has_many :ifgroups, :class_name => '::Ifgroup'
  #has_many :members, :through => :ifgroups
  #accepts_nested_attributes_for :ifgroups
  #accepts_nested_attributes_for :members

  attr_accessible :title, :author, :description, :photo_id, :date, :position, :margin_image_id, :description_for_schools, :description_for_groups, :video_url, :file1_id, :file2_id, :file3_id, :file4_id, :file5_id, :file6_id, :file7_id, :file8_id, :file9_id, :file10_id
  #, :ifgroups_attributes , :books_attributes
  acts_as_indexed :fields => [:title, :author, :description]

  validates :title, :presence => true, :uniqueness => true

  belongs_to :photo, :class_name => '::Refinery::Image'
  belongs_to :margin_image, :class_name => '::Refinery::Image'

  belongs_to :file1, :class_name => '::Refinery::Resource'
  belongs_to :file2, :class_name => '::Refinery::Resource'
  belongs_to :file3, :class_name => '::Refinery::Resource'
  belongs_to :file4, :class_name => '::Refinery::Resource'
  belongs_to :file5, :class_name => '::Refinery::Resource'
  belongs_to :file6, :class_name => '::Refinery::Resource'
  belongs_to :file7, :class_name => '::Refinery::Resource'
  belongs_to :file8, :class_name => '::Refinery::Resource'
  belongs_to :file9, :class_name => '::Refinery::Resource'
  belongs_to :file10, :class_name => '::Refinery::Resource'

end
