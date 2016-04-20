class Container < ActiveFedora::Base
  include Hydra::Works::WorkBehavior

  property :title, predicate: ::RDF::DC.title, multiple: false
  validates :title, presence: { message: 'Your work must have a title.' }
end
