class Container < ActiveFedora::Base
  include ::PagedMedia::ContainerBehavior

  property :title, predicate: ::RDF::Vocab::DC.title, multiple: false
  validates :title, presence: { message: 'Your work must have a title.' }

end
