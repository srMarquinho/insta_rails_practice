class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :comments
      t.boolean :like

      t.timestamps
    end
  end
end
