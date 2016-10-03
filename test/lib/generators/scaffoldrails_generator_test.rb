require 'test_helper'
require 'generators/scaffoldrails/scaffoldrails_generator'

class ScaffoldrailsGeneratorTest < Rails::Generators::TestCase
  tests ScaffoldrailsGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
