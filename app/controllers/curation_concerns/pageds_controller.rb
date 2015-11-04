# Generated via
#  `rails generate curation_concerns:work Paged`

class CurationConcerns::PagedsController < ApplicationController
  include CurationConcerns::CurationConcernController
  set_curation_concern_type Paged
end
