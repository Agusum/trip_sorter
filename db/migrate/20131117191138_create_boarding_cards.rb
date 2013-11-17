class CreateBoardingCards < ActiveRecord::Migration
  def change
    create_table :boarding_cards do |t|
    	t.string :origin
      t.string :destination
      t.string :form_of_transport
      t.string :seat
      t.text :extra_info

      t.timestamps
    end
  end
end
