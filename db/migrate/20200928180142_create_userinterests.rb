class CreateUserinterests < ActiveRecord::Migration[6.0]
  def change
    create_table :userinterests do |t|
      t.integer :user_id
      t.integer :interest_id

      t.timestamps
    end
  end
end
