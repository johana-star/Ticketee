module SeedHelpers
  def create_user!(attributes={})
    user = Factory(:user, attributes)
    user.confirm!
    user
  end
end

Rspec.configure do |config|
  config.include SeedHelpers
end
__END__
