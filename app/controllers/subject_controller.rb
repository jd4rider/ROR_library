class SubjectController < ApplicationController
  def add
    #@subjects = Subject.new
  end

  def subject_params
    params.require(:subject).permit(:name)
  end

  def create
    @subjects = Subject.create(subject_params)
    redirect_to :controller => 'book', :action => 'list'
  end
end
