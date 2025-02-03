require 'rails_helper'

RSpec.describe "Book Creation", type: :feature do

  it "creates a book with a valid title" do
    visit new_book_path
    fill_in "Title", with: "New Book"
    fill_in "Author", with: "Author Name"
    fill_in "Price", with: "19.99"
    select "2023", from: "book_published_date_1i"
    select "January", from: "book_published_date_2i"
    select "1", from: "book_published_date_3i"
    click_button "Create Book"
    expect(page).to have_content("Book was successfully created.")
  end

  it "does not create a book with a blank title" do
    visit new_book_path
    fill_in "Title", with: ""
    fill_in "Author", with: "Author Name"
    fill_in "Price", with: "19.99"
    select "2023", from: "book_published_date_1i"
    select "January", from: "book_published_date_2i"
    select "1", from: "book_published_date_3i"
    click_button "Create Book"
    expect(page).to have_content("Title can't be blank")
  end


  it "creates a book with a valid author" do
    visit new_book_path
    fill_in "Title", with: "New Book"
    fill_in "Author", with: "Author Name"
    fill_in "Price", with: "19.99"
    select "2023", from: "book_published_date_1i"
    select "January", from: "book_published_date_2i"
    select "1", from: "book_published_date_3i"
    click_button "Create Book"
    expect(page).to have_content("Book was successfully created.")
  end

  it "does not create a book with a blank author" do
    visit new_book_path
    fill_in "Title", with: "New Book"
    fill_in "Author", with: ""
    fill_in "Price", with: "19.99"
    select "2023", from: "book_published_date_1i"
    select "January", from: "book_published_date_2i"
    select "1", from: "book_published_date_3i"
    click_button "Create Book"
    expect(page).to have_content("Author can't be blank")
  end


  it "creates a book with a valid price" do
    visit new_book_path
    fill_in "Title", with: "New Book"
    fill_in "Author", with: "Author Name"
    fill_in "Price", with: "19.99"
    select "2023", from: "book_published_date_1i"
    select "January", from: "book_published_date_2i"
    select "1", from: "book_published_date_3i"
    click_button "Create Book"
    expect(page).to have_content("Book was successfully created.")
  end

  it "does not create a book with a negative price" do
    visit new_book_path
    fill_in "Title", with: "New Book"
    fill_in "Author", with: "Author Name"
    fill_in "Price", with: "-1.11"
    select "2023", from: "book_published_date_1i"
    select "January", from: "book_published_date_2i"
    select "1", from: "book_published_date_3i"
    click_button "Create Book"
    expect(page).to have_content("Price must be greater than or equal to 0")
  end


  it "creates a book with a valid published date" do
    visit new_book_path
    fill_in "Title", with: "New Book"
    fill_in "Author", with: "Author Name"
    fill_in "Price", with: "19.99"
    select "2023", from: "book_published_date_1i"
    select "January", from: "book_published_date_2i"
    select "1", from: "book_published_date_3i"
    click_button "Create Book"
    expect(page).to have_content("Book was successfully created.")
  end

  it "does not create a book with a blank published date" do
    visit new_book_path
    fill_in "Title", with: "New Book"
    fill_in "Author", with: "Author Name"
    fill_in "Price", with: "19.99"
    select "", from: "book_published_date_1i"
    select "", from: "book_published_date_2i"
    select "", from: "book_published_date_3i"
    click_button "Create Book"
    expect(page).to have_content("Published date can't be blank")
  end
end
