## The following method will take a string
## and convert it into a URL friendly format
## by removing leading and trailing spaces,
## subbing spaces between words with hyphens,
## and removing apostrophes.

def to_url(string)
  string.strip
        .downcase
        .gsub(/'+/, '')
        .gsub(/\s+/, "-")
end
