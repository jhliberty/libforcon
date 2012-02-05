class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :email
      t.string :name
      t.string :zip

      t.timestamps
    end
  end
end
