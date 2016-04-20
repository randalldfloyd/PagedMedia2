class CurationConcerns::ContatinersController < ApplicationController
  include CurationConcerns::CurationConcernController
  self.curation_concern_type = Container
end
