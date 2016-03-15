require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "text_me" do
    mail = UserMailer.text_me
    assert_equal "Text me", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
