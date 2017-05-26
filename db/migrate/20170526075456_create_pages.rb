class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.boolean :is_admin, default: false
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
