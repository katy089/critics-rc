class CreateCritics < ActiveRecord::Migration[7.0]
  def change
    create_table :critics do |t|
      t.string :title
      t.text :body
      t.references :user, foreign_key: true
      t.references :criticable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
