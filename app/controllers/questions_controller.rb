class QuestionsController < ApplicationController
  def ask

  end
  
  def answer
    @question = params[:question]
    if params[:question].include?("?") 
      @coach_answer = "Silly question, get dressed and go to work!"
    elsif params[:question].include?("!")
      @coach_answer = "I'm going to work right now!"
    else    
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end

end
