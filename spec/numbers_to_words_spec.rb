require('rspec')
require('numbers_to_words')
require('pry')

describe('Fixnum#numbers_to_words') do
  it('Spells out a single digit number correctly') do
    expect((3).numbers_to_words).to(eq("three"))
  end
end

describe('Fixnum#numbers_to_words') do
  it('Spells out a double-digit number correctly') do
    expect((10).numbers_to_words).to(eq("ten"))
  end
end

describe('Fixnum#numbers_to_words') do
  it('Reads out a triple-digit number correctly') do
    expect((111).numbers_to_words).to(eq("onehundredeleven"))
  end
end

describe('Fixnum#numbers_to_words') do
  it('Reads out a triple-digit number correctly') do
    expect((666).numbers_to_words).to(eq("sixhundredandsixtysix"))
  end
end
