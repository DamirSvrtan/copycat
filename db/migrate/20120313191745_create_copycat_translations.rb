class CreateCopycatTranslations < ActiveRecord::Migration
  def up
    create_table :copycat_translations do |t|    
      t.string :key
      t.text :value
      t.timestamps
    end
    change_table :copycat_translations do |t|
      t.index :key
    end
  end

  def down
    drop_table :copycat_translations
  end
end
