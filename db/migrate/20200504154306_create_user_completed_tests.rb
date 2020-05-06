class CreateUserCompletedTests < ActiveRecord::Migration[6.0]
  def change
    create_table :user_completed_tests do |t|
      t.references :test, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
