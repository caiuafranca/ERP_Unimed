class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.string :departament
      t.string :username
      t.string :password	
      t.timestamps
    end
  end
end
