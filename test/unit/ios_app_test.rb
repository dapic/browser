require "test_helper"

class IosAppTest < Minitest::Test
  let(:browser) { Browser.new(ua: $ua["IOS_WEBVIEW"]) }

  test "detect as ios" do
    assert browser.ios?
  end

  test "detect as safari" do
    assert browser.safari?
  end

  test "detect as webview" do
    assert browser.ios_webview?
  end
end
