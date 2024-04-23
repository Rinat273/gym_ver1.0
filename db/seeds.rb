Workout.destroy_all
 Train.destroy_all
 Exercise.destroy_all
 TrainPlan.destroy_all
 ExerciseType.destroy_all
 TrainType.destroy_all


breast = TrainType.create!(title: "Грудь и бицепс")
back = TrainType.create!(title: "Спина и трицепс")
legs = TrainType.create!(title: "Ноги и плечи")


barbellst = ExerciseType.create!(title: "Жим штанги лежа")
barbelld = ExerciseType.create!(title: "Жим штанги диагонально")
butterfly = ExerciseType.create!(title: "Сведение на бабочке")
biceps = ExerciseType.create!(title: "Штанга на бицепс стоя")
hammers = ExerciseType.create!(title: "Молотки")
press = ExerciseType.create!(title: "Подъем ног на пресс")
deadlift = ExerciseType.create!(title: "Становая тяга")
barbell_squat = ExerciseType.create!(title: "Приседание со штангой")
top_link = ExerciseType.create!(title: "Верхняя тяга за голову")
triceps_grip = ExerciseType.create!(title: "Трицепс обратным хватом")
french_press = ExerciseType.create!(title: "Французский жим")
leg_extension = ExerciseType.create!(title: "Разгибание ног сидя")
squat = ExerciseType.create!(title: "Приседания")
leg_press = ExerciseType.create!(title: "Жим ног сидя")
deadlift2 = ExerciseType.create!(title: "Мертвая тяга")
leg_curl = ExerciseType.create!(title: "Сгибание ног")
dumbbell_fly = ExerciseType.create!(title: "Разведение гантелей стоя")


trplan = [
  [breast, barbelld, 1],
  [breast, barbellst, 2],
  [breast, butterfly, 3],
  [breast, biceps, 4],
  [breast, hammers, 5],
  [breast, press, 6],

  [back, deadlift, 1],
  [back, barbell_squat, 2],
  [back, top_link, 3],
  [back, triceps_grip, 4],
  [back, french_press, 5],

  [legs, leg_extension, 1],
  [legs, squat, 2],
  [legs, leg_press, 3],
  [legs, deadlift2, 4],
  [legs, leg_curl, 5],
  [legs, dumbbell_fly, 6]
]

trplan.each do |item|
  TrainPlan.create!(train_type_id: item[0].id, exercise_type_id: item[1].id, sequence_number: item[2])
end

TrainPlan.all.each do |value|
  Train.create!(train_plan_id: value.id)
end

data = [
  [TrainPlan.find(1), 1, 15, 30],
  [TrainPlan.find(1), 2, 15, 35],
  [TrainPlan.find(1), 3, 15, 40],
  [TrainPlan.find(1), 4, 15, 40],

  [TrainPlan.find(2), 1, 14, 40],
  [TrainPlan.find(2), 2, 15, 35], 
  [TrainPlan.find(2), 3, 15, 35],

  [TrainPlan.find(3), 1, 15, 6], 
  [TrainPlan.find(3), 2, 15, 6], 
  [TrainPlan.find(3), 3, 15, 7], 

  [TrainPlan.find(4), 1, 15, 12], 
  [TrainPlan.find(4), 2, 15, 17], 
  [TrainPlan.find(4), 3, 15, 17],
  [TrainPlan.find(4), 4, 15, 17],

  [TrainPlan.find(5), 1, 15, 6], 
  [TrainPlan.find(5), 2, 15, 6], 
  [TrainPlan.find(5), 3, 15, 6], 
    
  [TrainPlan.find(6), 1, 25, 0],
  [TrainPlan.find(6), 2, 20, 0], 
  [TrainPlan.find(6), 3, 15, 0],
  [TrainPlan.find(6), 4, 12, 0],
    
  [TrainPlan.find(7), 1, 15, 20],
  [TrainPlan.find(7), 2, 15, 30],
  [TrainPlan.find(7), 3, 15, 40],

  [TrainPlan.find(8), 1, 15, 20], 
  [TrainPlan.find(8), 2, 15, 30],
  [TrainPlan.find(8), 3, 15, 30],

  [TrainPlan.find(9), 1, 15, 6],
  [TrainPlan.find(9), 2, 15, 6],
  [TrainPlan.find(9), 3, 15, 6], 

  [TrainPlan.find(10), 1, 15, 6], 
  [TrainPlan.find(10), 2, 15, 7],
  [TrainPlan.find(10), 3, 15, 6],
  [TrainPlan.find(10), 4, 15, 6], 
    
  [TrainPlan.find(11), 1, 15, 12], 
  [TrainPlan.find(11), 2, 15, 12],
  [TrainPlan.find(11), 3, 15, 14],
    
  [TrainPlan.find(12), 1, 20, 3],
  [TrainPlan.find(12), 2, 20, 3],

  [TrainPlan.find(13), 1, 15, 20],
  [TrainPlan.find(13), 2, 15, 40],
  [TrainPlan.find(13), 3, 15, 40],
  [TrainPlan.find(13), 4, 15, 40],
    
  [TrainPlan.find(14), 1, 15, 100],
  [TrainPlan.find(14), 2, 15, 100],
  [TrainPlan.find(14), 3, 15, 120],
  [TrainPlan.find(14), 4, 15, 140],

  [TrainPlan.find(15), 1, 15, 20],
  [TrainPlan.find(15), 2, 15, 40],
  [TrainPlan.find(15), 3, 15, 40],
   
  [TrainPlan.find(16), 1, 15, 6],
  [TrainPlan.find(16), 2, 15, 6],

  [TrainPlan.find(17), 1, 10, 6],
  [TrainPlan.find(17), 2, 8, 8],
  [TrainPlan.find(17), 3, 8, 10],
  [TrainPlan.find(17), 4, 7, 8]
]


data.each do |item|
  Exercise.create!(train_plan_id: item[0].id, approach_number: item[1], repeats: item[2], mass: item[3])
end

Train.all.each do |train|
  train.exercises.each do |exercise|
    Workout.create!(train_id: train.id, exercise_id: exercise.id)
end
end
