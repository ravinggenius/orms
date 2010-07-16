require 'test_helper'

class OrmTest < ActiveSupport::TestCase
  should "be valid" do
    assert Orm.new.valid?
  end
end
