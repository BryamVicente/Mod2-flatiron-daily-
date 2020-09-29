class DeleteUserInterestTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :userinterests 
    
  end
end
