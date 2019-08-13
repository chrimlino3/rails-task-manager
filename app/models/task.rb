class Task < ApplicationRecord
  def change
    create_table :tasks do |t|
      boolean :completed, default: false
    end
  end
end
