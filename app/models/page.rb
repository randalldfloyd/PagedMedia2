class Page < ActiveFedora::Base
  include ::CurationConcerns::FileSetBehavior
  # include ::CurationConcerns::BasicMetadata
  validates :title, presence: { message: 'Your work must have a title.' }
end
