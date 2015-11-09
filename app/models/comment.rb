class Comment < ActiveRecord::Base
  belongs_to :task
  has_many :attached_files, dependent: :destroy
end
