class Category < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :posts
#  belongs_to :segment

  def self.category_count
    category_map ||= []
    Category.all.each do |cat|
      record = {id: cat.id, name: cat.name, total: cat.posts.count.to_s}
      Rails.logger.debug "category_count: #{ cat.name }, #{cat.posts.count}, #{record[:name]}, #{record[:total]}"
      category_map << record
    end

    category_map
  end    
end
