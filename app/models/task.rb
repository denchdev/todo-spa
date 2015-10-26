class Task < ActiveRecord::Base
  belongs_to :project, dependent: :destroy
end
