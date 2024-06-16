class HabitsController < ApplicationController

  def index
    @habits = Habit.order("created_at DESC")
  end

  def create
    habit = Habit.create(habit: params[:habit], evaluation_id: params[:evaluation_id])
    render json:{ habit: habit, evaluation: habit.evaluation.name }
  end

end
