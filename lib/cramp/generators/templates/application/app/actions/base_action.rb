class BaseAction < Cramp::Action
  <% if active_record? %>use_fiber_pool do |pool|
    # Called everytime after a fiber is done with a callback
    pool.generic_callbacks << proc { ActiveRecord::Base.clear_active_connections! }
  end<% end %>
end