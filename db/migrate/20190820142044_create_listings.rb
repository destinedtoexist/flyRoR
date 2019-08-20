class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :address
      t.point :coordinates, :point
      t.timestamps
    end
  end
end
