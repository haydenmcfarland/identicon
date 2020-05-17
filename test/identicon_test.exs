defmodule IdenticonTest do
  use ExUnit.Case
  doctest Identicon

  @tmp_dir "#{File.cwd!()}/test/tmp"

  test "hash_input string to md5 hash to bytes" do
    input = "hayden mcfarland"
    result = Identicon.main(input, output: @tmp_dir)
    assert result == :ok
  end
end
