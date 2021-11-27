require './corrector'
require 'rspec'

RSpec.describe Corrector do
  context “When testing the corrector” do
    before(:each) do
      @corrector = Corrector.new
    end

    it 'should capitalize first letter test1:ahmad' do
      expect(@corrector.correct_name('ahmad')).to eq('Ahmad')
    end

    it 'should capitalize first letter test2:rustamjon' do
      expect(@corrector.correct_name('rustamjon')).to eq('Rustamjon')
    end
  end
end

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
