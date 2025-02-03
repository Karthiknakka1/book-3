require 'rails_helper'

RSpec.describe Book, type: :model do
  # it "is valid with a title" do
  #   book = Book.new(title: "Sample Book")
  #   expect(book).to be_valid
  # end

  it "is invalid without a title" do
    book = Book.new(title: nil)
    expect(book).to_not be_valid
  end

  it "is valid with valid attributes" do
    book = Book.new(title: "Sample Book", author: "John Doe", price: 19.99, published_date: Date.today)
    expect(book).to be_valid
  end

  it "is not valid without a title" do
    book = Book.new(author: "John Doe", price: 19.99, published_date: Date.today)
    expect(book).not_to be_valid
  end

  it "is not valid without an author" do
    book = Book.new(title: "Sample Book", price: 19.99, published_date: Date.today)
    expect(book).not_to be_valid
  end

  it "is not valid with a negative price" do
    book = Book.new(title: "Sample Book", author: "John Doe", price: -1.11, published_date: Date.today)
    expect(book).not_to be_valid
  end

  it "is not valid without a published date" do
    book = Book.new(title: "Sample Book", author: "John Doe", price: 19.99)
    expect(book).not_to be_valid
  end
end
