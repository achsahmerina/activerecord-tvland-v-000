class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |characters|
      characters.string :name
      characters.integer :show_id
    end
  end
end
