class CreateBugs < ActiveRecord::Migration

  def change
    create_table :bugs, :force => true do |t|
      t.string    :title
      t.string    :description
      t.string    :status
      t.string    :screenshot
      t.string    :role
      t.date      :deadline
      t.integer   :creator_id
      t.integer   :solver_id
      t.integer   :project_id

      t.timestamps
    end
  end
end
