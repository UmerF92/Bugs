class CreateTemporaries < ActiveRecord::Migration
  def change
    create_table :temporaries do |t|

      t.timestamps
    end
  end
end
