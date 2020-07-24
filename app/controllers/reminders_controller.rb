class RemindersController < ApplicationController
  def index; end

  def create
    reminder = Reminder.create(user_id: current_user.id, **create_params)

    if reminder.save
      flash[:success] = "Successfully created reminder: #{reminder.title}."

      render action: :index, status: 200
    else
      flash[:error] = "Error: #{reminder.errors.full_messages.join('. ')}."

      render action: :index #, status: 401, locals: { reminder: reminder } }
    end
  end

  private

  def create_params
    params.require(:reminder).permit(%i(title description user_id))
  end
end
