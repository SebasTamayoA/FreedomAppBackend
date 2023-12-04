class AddFieldsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :gender, :string
    add_column :users, :gender_preference, :string
    add_column :users, :age, :integer
    add_column :users, :country, :string
    add_column :users, :bio, :text
    add_column :users, :is_available, :boolean
  end
end
