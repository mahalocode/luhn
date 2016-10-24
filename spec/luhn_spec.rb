require 'spec_helper'

RSpec.describe Luhn, type: :model do
    describe 'is_valid? should work' do 
        it 'should return true if the number is valid' do
          expect(Luhn.is_valid?(4531015112830366)).to be true
        end

        it 'should return false if the number is not valid' do
          expect(Luhn.is_valid?(6011514438546201)).to be false
        end

        it 'should give the wrong answer if you begin on the left side for valid numbers' do
          expect(Luhn.is_valid?(1771549495586802)).to be true
        end

        it 'should give the wrong answer if you begin on the left for invalid numbers' do
          expect(Luhn.is_valid?(377681478627337)).to be false
        end

        it 'should return false since number is invalid'  do 
           expect(Luhn.is_valid?(4531015112830366)).to be false 
        end

        it 'should return false since number is invalid'  do   
           expect(Luhn.is_valid?(6011514438546201)).to be false 
        end

        it 'should return false since number is invalid'  do 
            expect(Luhn.is_valid?(1771549495586802)).to be false
        end
    end
end

