class HiController < ApplicationController
  def index
    @student = "Student"
    @current_time = Time.now

    count = params[:count].to_i
    @messages = []

    count = 1 if count <= 0
    
    count.times do |count|
      @messages << "Моє повідомлення #{count} прийшло з Контролера"
    end
  end
end
