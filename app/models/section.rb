class Section < ActiveFedora::Base
  include ::CurationConcerns::WorkBehavior
  # include ::CurationConcerns::BasicMetadata
  validates :title, presence: { message: 'Your work must have a title.' }
end
