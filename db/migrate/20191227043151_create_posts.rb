class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.text :address

      t.timestamps
    end
  end
end
