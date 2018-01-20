RSpec::Matcher.define :have_key do |key|
  match do |type|
    type.has-key?(key, @value)
  end

  chain :with_value do |value|
    @value = value
  end
end

