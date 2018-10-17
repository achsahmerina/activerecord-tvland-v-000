class CreateCharacters < ActiveRecord::Migration[4.2]
  def change
    create_table :characters do |characters|
      characters.string :name
      characters.integer :show_id
    end
  end
end
