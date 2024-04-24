class Workout < ApplicationRecord
  belongs_to :train
  belongs_to :exercise

  # def steps
  #   steps = []
  #   Train.find(train).train_plans.each do |plan|
  #     TrainPlan.find(plan.id).set_exercises.each do |set|
  #       steps << set
  #      end
  #   end
  #   steps
  # end

  # def current_exercise
  #   steps[current_step]
  # end

  # def show_exercise
  #   tplan = TrainPlan.find(current_exercise.train_plan_id)
  #   exercise = Exercise.find(tplan.exercise_id)
  #   exercise
  # end

  # def done!
  #   update!(current_step: current_step + 1)
  # end

  # def finish_exercise
  #   Track.create!(datetime: data, set_exercise_id: current_exercise.id)
  # end

end
