# frozen_string_literal: true

require_relative "age_calcs/version"

module AgeCalcs
  class Error < StandardError; end
  def self.find_age(year, month, day)
    birthdate = Time.new(year, month, day)
    seconds = (Time.now - birthdate).to_i
    mm, ss = seconds.divmod(60)
    hh, mm = mm.divmod(60)
    dd, hh = hh.divmod(24)
    year_of_age = dd/365
    rem_days = dd%365
    rem_months = rem_days/31
    puts "Running Age: #{year_of_age} and #{rem_months} th Month."
  end
end
