require './student'
require './person'
require 'rspec'

RSpec.describe Student do
  describe '#initialize' do
    it 'should initialize a student with a name' do
      student = Student.new('Rustamjon', 20, { parent_permission: true })
      expect(student.name).to eq('Rustamjon')
    end

    it 'should initialize a student with an age' do
      student = Student.new('Rustamjon', 20, { parent_permission: true })
      expect(student.age).to eq(20)
    end

    it 'should initialize a student with a parent_permission' do
      student = Student.new('Rustamjon', 20, { parent_permission: true })
      expect(student.parent_permission).to eq({ parent_permission: true })
    end
  end

  describe '#play_hooky' do
    it 'should return "¯\(ツ)/¯" when called' do
      student = Student.new('Rustamjon', 20, { parent_permission: true })
      expect(student.play_hooky).to eq("¯\(ツ)/¯")
    end
  end
end
