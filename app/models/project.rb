class Project < ActiveRecord::Base
  belongs_to :user
  has_many :tasks, dependent: :destroy

  validates :title, presence: true
  #validates :user, presence: true

  def as_json(options = {})
    super(options.merge({ :include => { :tasks=> 
                        { :include => { :comments=> 
                        { :include => { :attached_files => {}}}}}}}))
  end

  before_save do 
    unless position
      self.position = Project.all.size
    end
  end
end
