require 'spec_helper'

RSpec.describe MaNameGenerator::Base do
  describe '#generate' do
    it 'generates sample name' do
      expect(described_class.generate).to be_a(String)
    end

    it 'raises an error when try to generate unique with invalid params' do
      expect { described_class.generate_unique excluding: 'string' }.to raise_error(MaNameGenerator::NotArray)
    end

    it 'generates sample unique item when requested with excluding items' do
      expect(described_class.generate_unique(excluding: %w[ITEM1 ITEM2])).to be_a(String)
    end

    it 'excludes items on #excluded_items' do
      expect(described_class.send(:excluded_items, ['DUMMY'])).not_to include('DUMMY')
    end
  end
end
