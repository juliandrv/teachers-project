class CreateJoinTableTeachersTopics < ActiveRecord::Migration[5.2]
  def change
    create_join_table :teachers, :topics do |t|
      # t.index [:teacher_id, :topic_id]
      # t.index [:topic_id, :teacher_id]
    end
  end
end
