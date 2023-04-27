class QuestionsController < ApplicationController
  def ask
    @display_msg = 'Shoot your shot !'
    @answer = ''

  end

  def answer
    @asked_question = params[:question]
    if @asked_question
      if @asked_question == 'I am going to work'
        @answer = 'Great!'
      elsif @asked_question.include? '?'
        @answer = 'Silly question, get dressed and go to work!'
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end
