class CoachingController < ApplicationController
  def answer
    @question = params[:query]
    @answer = coach_answer_enhanced(@question)
  end

  def ask
  end

  def home
  end

  private

  def coach_answer(your_message)
    if your_message.end_with?("?")
      return "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      return ""
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    standard_answer = coach_answer(your_message.capitalize)
    if your_message == your_message.upcase && standard_answer != ""
      standard_answer = "I can feel your motivation! " + standard_answer
    end
    return standard_answer
  end
end
