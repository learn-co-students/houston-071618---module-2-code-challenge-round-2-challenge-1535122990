class CreateGuestEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :guest_episodes do |t|
      t.belongs_to :guest
      t.belongs_to :episode
      t.integer :rating 

      t.timestamps
    end
  end
end
