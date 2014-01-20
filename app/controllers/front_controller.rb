class FrontController < ApplicationController
  def index
#  	@categories = Category.all
    @category_count = Category.category_count
  end

  def publish
    @categories = Category.all
  end
end
