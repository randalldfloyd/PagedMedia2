class PagedMedia < ActiveFedora::Base
  include ::CurationConcerns::WorkBehavior
  include ::PMP::PagedMediaBehavior

  validates :title, presence: { message: 'Your work must have a title.' }
  validates :creator, presence: { message: 'Your work must have an author.' }
end
