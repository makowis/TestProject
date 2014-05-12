# encoding: utf-8
# language: japanese

step ':path を表示する' do |path|
  url = "http://127.0.0.1/#{path}"
  visit url
end

step 'レスポンスステータスが 200' do
  expect(page.status_code).to be(200)
end
