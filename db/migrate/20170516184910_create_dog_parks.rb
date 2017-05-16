class CreateDogParks < ActiveRecord::Migration[5.0]
  def change
    create_table :dog_parks do |t|

      t.timestamps
    end
  end
end
