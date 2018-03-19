class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :subtitle
      t.text :body
      t.datetime :date

      t.timestamps
    end
  end
end
