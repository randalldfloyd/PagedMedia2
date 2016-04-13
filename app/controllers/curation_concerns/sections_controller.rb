class CurationConcerns::SectionsController < ApplicationController
  include CurationConcerns::CurationConcernController
  self.curation_concern_type = Section
end
