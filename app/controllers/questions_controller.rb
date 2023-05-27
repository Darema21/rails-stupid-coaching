class QuestionsController < ApplicationController
  def ask
  end

  def answers
    @question = params[:user_question]

    if @question.ends_with?('?')
      @response = 'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work'
      @response = 'Great!'
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end

  def submit_question
    redirect_to answers_path
  end
end
