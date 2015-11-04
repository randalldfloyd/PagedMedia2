# Generated via
#  `rails generate curation_concerns:work Paged`
module CurationConcerns
  class PagedActor < CurationConcerns::BaseActor
    include ::CurationConcerns::WorkActorBehavior
  end
end
