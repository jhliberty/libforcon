class AddActivationCodeToSubscribers < ActiveRecord::Migration
  def change
    add_column :subscribers, :activation_code, :string
    add_column :subscribers, :status, :string
  end
end
