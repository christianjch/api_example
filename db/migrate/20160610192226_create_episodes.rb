class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.belongs_to :season, index: true

      t.string :title
      t.string :plot
      t.integer :number
    end
  end
end
