

class CurationConcerns::PagesController < ApplicationController
  include CurationConcerns::CurationConcernController
  set_curation_concern_type Page

  def new

  end

end
