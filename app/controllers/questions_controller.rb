class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @url_question = params["question"]
    @url_answer = ""
    if @url_question == "I am going to work"
      @url_answer = "Great !"
    elsif @url_question.split("").include?("?")
      @url_answer = "Silly question, get dressed and go to work!"
    else
      @url_answer = "I don't care, get dressed and go to work!"
    end
  end
end
