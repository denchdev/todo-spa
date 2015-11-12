class Task < ActiveRecord::Base
  belongs_to :project
  has_many :comments, dependent: :destroy


  def as_json(options = {})
    super(options.merge({ :include => { :comments=> 
                        { :include => { :attached_files => {}}}}}))
  end
end
