class CreateYagausers < ActiveRecord::Migration
  def change
    create_table :yagausers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
