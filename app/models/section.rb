class Section < ActiveFedora::Base
  include Hydra::Works::WorkBehavior

  validates :title, presence: { message: 'Your work must have a title.' }
end
