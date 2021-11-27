require './person'
require './rental'
require './book'
require 'rspec'

RSpec.describe Person do
  describe '#initialize' do
    it 'should initialize a person with a name and age' do
      person = Person.new('Rustamjon', 20)
      expect(person.name).to eq('Rustamjon')
      expect(person.age).to eq(20)
    end
    it 'should initialize a person with a name and age and parent permission' do
      person = Person.new('Rustamjon', 20, { parent_permission: true })
      expect(person.name).to eq('Rustamjon')
      expect(person.age).to eq(20)
      expect(person.parent_permission).to eq({ parent_permission: true })
    end
  end
end
