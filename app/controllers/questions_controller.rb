# frozen_string_literal: true

# new controller
# Generate a new QuestionsController, using the correct rails generator
# on the command line. This controller will have two actions, ask and answer.
# Open the routes.rb file and delete the duplicated routes if they got
# generated.

# If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer
# Silly question, get dressed and go to work!.
# Otherwise he will answer I don't care, get dressed and go to work!
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
