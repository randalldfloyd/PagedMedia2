

class CurationConcerns::PagesController < ApplicationController
  include CurationConcerns::CurationConcernController
  self.curation_concern_type = Page
end
