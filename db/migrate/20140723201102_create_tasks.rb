class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.timestamps :initial_date
      t.timestamps :finality_date
      t.boolean :active	
      t.timestamps
    end
  end
end
