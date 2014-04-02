class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  belongs_to :section

  def next
    @next_lesson = Lesson.where(:order_number => self.order_number + 1).first
  end

  def previous
    @previous_lesson = Lesson.where(:order_number => self.order_number - 1).first
  end
end
