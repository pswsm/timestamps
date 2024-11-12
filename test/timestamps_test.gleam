import gleeunit
import gleeunit/should
import timestamps

pub fn main() {
  gleeunit.main()
}

pub fn timestamp_from_millis_test() {
  timestamps.from_millis(0) |> timestamps.value_of |> should.equal(0)
}

pub fn timestamp_add_hours_test() {
  timestamps.from_millis(0)
  |> timestamps.add_hours(1)
  |> timestamps.value_of
  |> should.equal(3_600_000)
}

pub fn timestamp_is_after_test() {
  timestamps.from_millis(1)
  |> timestamps.is_after(timestamps.from_millis(0))
  |> should.equal(True)
}

pub fn timestamp_is_before_test() {
  timestamps.from_millis(0)
  |> timestamps.is_after(timestamps.from_millis(1))
  |> should.equal(False)
}

pub fn timestamp_is_future_test() {
  timestamps.new()
  |> timestamps.add_hours(1)
  |> timestamps.is_future
  |> should.equal(True)
}
