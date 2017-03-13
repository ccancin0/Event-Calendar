class CreateCategoryEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :category_events do |t|
      t.references :event, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
