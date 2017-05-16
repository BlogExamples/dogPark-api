class AddNameToDogParks < ActiveRecord::Migration[5.0]
  def change
    add_column :dog_parks, :name, :string
  end
end
