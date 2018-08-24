class CreateAppearences < ActiveRecord::Migration[5.1]
  def change
    create_table :appearences do |t|
      t.integer :rating
      t.belongs_to :guest, foreign_key: true
      t.belongs_to :episode, foreign_key: true

      t.timestamps
    end
  end
end
