class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description, limit: 1000

      t.timestamps
    end
  end
end
