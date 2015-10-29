class Project < ActiveRecord::Base
  belongs_to :user
  has_many :tasks, dependent: :destroy

  def as_json(options = {})
    super(options.merge(include: :tasks))
  end
end
