class QuestionsController < ApplicationController
  def ask
    # Pas besoin de variable d'instance ici
  end

  def answer
    @question = params[:question]
    @answer = case @question
              when "I am going to work"
                "Great!"
              when /\?\z/
                "Silly question, get dressed and go to work!"
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
