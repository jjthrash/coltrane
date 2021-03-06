# frozen_string_literal: true

RSpec.describe NoteSet do
  let(:note_set) { NoteSet['A#', 'D', 'F', 'G#'] }

  it 'can return named intervals' do
    expect(note_set.interval_sequence.names)
      .to eq(%w[1P 3M 5P 7m])
  end

  it 'can intersect other notesets' do
    intersection_notes = (note_set & NoteSet['A', 'D', 'F'])
    expect(intersection_notes.names).to include('D', 'F')
    expect(intersection_notes.names).to_not include('A', 'G')
  end
end
