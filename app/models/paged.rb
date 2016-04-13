# Generated via
#  `rails generate curation_concerns:work Paged`
class Paged < ActiveFedora::Base
  include ::CurationConcerns::WorkBehavior
  include ::CurationConcerns::BasicMetadata
  #include Hydra::Collection::Metadata
  validates :title, presence: { message: 'Your work must have a title.' }
end
