# Behaviours for container model
module PagedMedia::ContainerBehavior
  extend ActiveSupport::Concern
  include Hydra::Works::WorkBehavior

  def list_titles
    self.descendents_list_titles
  end

  def members_nested
    self.descendents_tree
  end
  
end
