class Comment < ActiveRecord::Base
  belongs_to :task
  has_many :attached_files, dependent: :destroy

  def as_json(options = {})
    super(options.merge( :include => { :attached_files => {}}))
  end
end
