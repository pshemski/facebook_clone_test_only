class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
    	t.user_id :integer
    	t.status_id :integer
      t.timestamps null: false
    end
  end
end
