class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :kvr_file_name
      t.string :kvr_content_type
      t.integer :kvr_file_size
      t.datetime :kvr_updated_at
      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end

