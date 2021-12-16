class CreateLectures < ActiveRecord::Migration[6.1]
  def up
    create_table :lectures do |t|
      t.string :track, limit: 1
      t.string :time
      t.string :title, null: false

      t.timestamps
    end
  end

  def down
    drop_table :lectures
  end
end
