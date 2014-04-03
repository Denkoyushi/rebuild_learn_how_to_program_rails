class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  belongs_to :section

  def next
    @next_lesson = Lesson.order(:order_number).detect { |lesson| lesson.order_number > self.order_number }
  end

  def previous
    @previous_lesson = Lesson.order(order_number: :desc).detect { |lesson| lesson.order_number < self.order_number }
  end
end
