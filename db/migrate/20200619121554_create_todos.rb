class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :text
      t.boolean :complete, default: false
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
