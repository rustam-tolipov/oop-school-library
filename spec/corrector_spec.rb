require './corrector'
require 'rspec'

# describe Corrector do
#   before(:each) do
#     @corrector = Corrector.new
#   end

#   it 'should capitalize first letter of each word' do
#     expect(@corrector.correct_name('ahmad')).to eq('Ahmad')
#   end

#   it 'should capitalize first letter' do
#     expect(@corrector.correct_name('rustamjon')).to eq('Rustamjon')
#   end
# end

RSpec.describe Corrector do
  before(:each) do
    @corrector = Corrector.new
  end

  it 'should capitalize first letter of each word' do
    expect(@corrector.correct_name('ahmad')).to eq('Ahmad')
  end

  it 'should capitalize first letter' do
    expect(@corrector.correct_name('rustamjon')).to eq('Rustamjon')
  end
end

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end