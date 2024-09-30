class CreateJokes < ActiveRecord::Migration[7.2]
  def change
    create_table :jokes do |t|
      t.string :name
      t.string :content
      t.string :author

      t.timestamps
    end
  end
end
