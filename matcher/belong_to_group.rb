RSpec::Matchers.define :belong_to_group do |group|
  matcher do |user|
    user.belongs_to_group?(group)
  end
end

