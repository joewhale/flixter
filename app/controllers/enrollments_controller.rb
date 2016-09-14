class EnrollmentsController < ApplicationController
  before_action :authenticate_user!

  def create
    current_user.enrollments.create(course: current_course)

    # enrollment = Enrollment.new
    # enrollment.user = current_user
    # enrollment.course = current_cource
    # enrollment.save



    redirect_to course_path(current_course)
  end



  private

  def current_course
    @current_course ||= Course.find(params[:course_id])
  end
end
