require 'spec_helper'

describe Lesson do
  it { should validate_presence_of :name }
  it { should belong_to :section }

  context '#next' do
    it 'returns the lesson with the next-highest number than the current lesson' do
      current_lesson = Lesson.create({:name => 'lesson1', :order_number => 1})
      next_lesson = Lesson.create({:name => 'lesson2', :order_number => 2})
      current_lesson.next.should eq next_lesson
    end
  end

    context '#previous' do
    it 'returns the lesson with the previous-lowest number than the current lesson' do
      current_lesson = Lesson.create({:name => 'lesson1', :order_number => 2})
      previous_lesson = Lesson.create({:name => 'lesson2', :order_number => 1})
      current_lesson.previous.should eq previous_lesson
    end
  end
end
