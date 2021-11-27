require './classroom'
require './student'
require 'rspec'

describe Classroom do
  describe '#initialize' do
    it 'should initialize a classroom with a label' do
      classroom = Classroom.new('Ruby')
      expect(classroom.label).to eq('Ruby')
    end
  end

  describe '#add_student' do
    it 'should add a student to the classroom' do
      classroom = Classroom.new('Ruby')
      student = Student.new('Rustamjon', 20, { parent_permission: true })
      classroom.add_student(student)
      expect(classroom.students.include?(student)).to eq(true)
    end
  end
end