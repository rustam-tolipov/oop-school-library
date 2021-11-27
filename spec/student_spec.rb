require './student'
require './person'
require 'rspec'


RSpec.describe Student do
  
  context “When testing the Student class” do
    
    before(:each) do
      @student = Student.new("Rustam", 21, true, "Ruby")
    end

    it "should have a name" do
      expect(@student.name).to eq("Rustam")
    end

    it "should have an age" do
      expect(@student.age).to eq(21)
    end

    it "should have a parent permission" do
      expect(@student.parent_permission).to eq(true)
    end

    it "should have a classroom" do
      expect(@student.classroom).to eq("Ruby")
    end

    it "should have a method to play hooky" do
      expect(@student.play_hooky).to eq("¯\(ツ)/¯")
    end
  end
end    

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
