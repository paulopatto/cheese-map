require 'spec_helper'
require './lib/array.rb'

describe '#xmap' do

  context 'Applying function to iterate over list:int and multiply by 2' do
    let(:ary) { (1..5).to_a }
    let(:expected_ary) { [2, 4, 6, 8, 10] }

    it 'inline version' do
      result = ary.xmap { |i| 2 * i }
      expect(result).to eq expected_ary
    end

    it 'multiline version' do
      result = ary.xmap do |i|
        2 * i
      end
      expect(result).to eq expected_ary
    end

    it 'uses #reduce' do
      expect(ary).to receive(:reduce)
      ary.xmap { |i| 2 * i }
    end
  end
end
