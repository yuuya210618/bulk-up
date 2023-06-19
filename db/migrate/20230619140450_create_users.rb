class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string     :name
      t.string     :email 
      t.string     :encrypted_password 
      t.integer    :body_weight   
      t.integer    :body_fat   
      t.timestamps
    end
  end
end
