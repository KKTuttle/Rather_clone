class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end
  def new
    @question = Question.new
  end

  def create
    @question = Question.create!(question_params)
      respond_to do |format|
        format.html{redirect_to questions_path}
        format.js
      end
  end

  def edit
      @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.update(question_params)
    redirect_to questions_path

  end

  private

  def question_params
    params.require(:question).permit(:author, :image1, :caption1, :image2, :caption2, :votes1, :votes2)
  end
end
