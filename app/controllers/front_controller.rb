class FrontController < ApplicationController
  def index
#  	@categories = Category.all
    @category_count = Category.category_count
  end
end
