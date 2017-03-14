class ClaimsController < ApplicationController
	before_action :set_enterprise, only: [:show, :edit]

  def index
    @enterprise = Enterprise.new
    @enterprises = Enterprise.all.reverse
  end

end
