require "test_helper"

class WechatTest < Minitest::Test
  setup do
    @browser = Browser.new
  end

  test "detects iphone wechat" do
    @browser.ua = $ua["IPHONE_WECHAT"]

    assert_equal "MicroMessenger", @browser.name
    assert_equal :wechat, @browser.id
    assert @browser.wechat?
    refute @browser.chrome?
    refute @browser.safari?
    assert @browser.webkit?
    assert @browser.modern?
    assert @browser.iphone?
    assert_equal "6.3.7", @browser.full_version
    assert_equal "6", @browser.version
  end

  test "detects ippad wechat" do
    @browser.ua = $ua["IPAD_WECHAT"]

    assert_equal "MicroMessenger", @browser.name
    assert_equal :wechat, @browser.id
    assert @browser.wechat?
    refute @browser.chrome?
    refute @browser.safari?
    assert @browser.webkit?
    assert @browser.modern?
    assert @browser.tablet?
    assert_equal "6.2.4", @browser.full_version
    assert_equal "6", @browser.version
  end

  test "detects windows wechat" do
    @browser.ua = $ua["WINDOWS_WECHAT"]

    assert_equal "MicroMessenger", @browser.name
    assert @browser.wechat?
    refute @browser.chrome?
    refute @browser.safari?
    assert @browser.webkit?
    assert @browser.modern?
    assert_equal "6.5.2.501", @browser.full_version
    assert_equal "6", @browser.version
  end
end
