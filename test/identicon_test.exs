defmodule IdenticonTest do
  use ExUnit.Case
  doctest Identicon

  @tmp_dir "#{File.cwd!()}/test/tmp"

  test "hash_input string to md5 hash to bytes" do
    string_input = "hayden mcfarland"
    test_file_name = "#{string_input}_test"

    input = [
      string_input,
      "--output-dir",
      @tmp_dir,
      "--file-name"
    ]

    result = Identicon.main(input)
    assert result == :ok
  end
end
