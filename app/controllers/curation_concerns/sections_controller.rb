class CurationConcerns::SectionsController < ApplicationController
  include CurationConcerns::CurationConcernController
  set_curation_concern_type Section
end
