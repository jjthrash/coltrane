# frozen_string_literal: true

RSpec.describe Progression do
  let(:progression) { Progression.new('I-IV-vi-V', key: 'A') }

  it 'returns chords' do
    expect(progression.chords.map(&:name))
      .to contain_exactly(*%w[AM DM F#m EM])
  end
end
