class DashboardController < ApplicationController
  def index
    @activities = Activity.all
    @groups = Group.all

    @groups.each do |group|
      @grups_activities = Activity.where(group_id: group.id).length
    end
  end
end
