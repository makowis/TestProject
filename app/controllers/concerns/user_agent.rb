module UserAgent
  def is_mobile?
    browser.iphone? || browser.ipod? || browser.android? || browser.windows_phone?
  end
  def is_tablet?
    browser.tablet?
  end
end