class Chapter < ActiveRecord::Base
  validates :name, :presence => true
  has_many :sections

  # def search
  #   @chapter = Chapter.basic_search(:name => params[search])
  #   puts "\nFound #{events.count} event(s):"
  #   events.each_with_index do |event, index|
  #   puts "#{index + 1}. #{event.description}"
  #   event.notes.each { |note| puts "- #{note.description}" }
  # end
end
