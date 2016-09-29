# Converts a string into a URL-friendly format.

def to_url(string)
  string.strip             # strips leading and trailing whitespaces
        .downcase
        .gsub(/[.,:;'"?!]/, '') # removes the following characteres: .,:;'"?!
        .gsub(/\s+/, "-")   # replace spaces with hyphens
end

examples = {
                  # Returns: her-mothers-favorite-quote-who-dat
  :example_one    => to_url(" Her Mother's Favorite Quote: 'Who Dat?'"),

                  # Returns blasphemy-i-cant-believe-it-why
  :example_two    => to_url("Blasphemy! I can't BELIEVE it! Why!?"),

                  # what-it-means-to-be-born-on-july-10-2000
  :example_three  => to_url("    What It Means to be born on July 10, 2000...")
}

examples.each do |example, string|
  puts string
end