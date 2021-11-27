require './teacher'
require 'rspec'

describe Teacher do
  describe '#initialize' do
    it 'should initialize a teacher with a name and age' do
      teacher = Teacher.new('Rustamjon', 20, 'Ruby')
      expect(teacher.name).to eq('Rustamjon')
      expect(teacher.age).to eq(20)
    end
  end

  describe '#can_use_services?' do
    it 'should return true' do
      teacher = Teacher.new('Rustamjon', 20, 'Ruby')
      expect(teacher.can_use_services?).to eq(true)
    end
  end
end
