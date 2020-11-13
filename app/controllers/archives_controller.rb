class ArchivesController < ApplicationController
  def index
    @entries = Enter.all.group_by(&:day)
  end
end
