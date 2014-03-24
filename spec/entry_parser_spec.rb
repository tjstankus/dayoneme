require 'spec_helper'

module Dayoneme
  describe EntryParser do

    it 'parses content from entry xml file' do
      xml_file = entry_fixture_file('3A78F62368CA496BAAE60370496531E5')
      entry = EntryParser.parse(xml_file)
      expect(entry.content).to eq('Notes')
    end

    it 'extracts file modified time'

    describe 'entry_files_modified_since' do
      context 'given a time parameter of yesterday' do
        it 'returns an entry file modified today' do
          pending 'reason'
          yesterday = DateTime.now - 1
          parser = EntryParser.new
          parser.entry_files_modified_since(yesterday)
        end
      end
    end

    describe '#parse_entries' do
      it 'stores time that parsing completes'
    end

  end
end
