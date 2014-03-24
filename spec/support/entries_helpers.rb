module EntriesHelpers

  def entry_fixture_file(entry_id)
    fixtures_entries_paths.detect { |f| f.include?(entry_id) }
  end

  def fixtures_entries_paths
    Dir.glob(File.join(fixtures_entries_dir, '*.doentry'))
  end

  def fixtures_entries_dir
    File.expand_path(
      File.join(File.dirname(__FILE__), '..', 'fixtures', 'entries'))
  end

end
