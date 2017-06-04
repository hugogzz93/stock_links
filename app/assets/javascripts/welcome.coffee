# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'welcome#index:loaded', ->
  $('.btn.btn-primary').on 'click', set_links
  $('#search').keypress (e) ->
    set_links() if e.which == 13


set_links = () ->
  val = $('#search').val()
  return if !val.trim() #if it's empty
  $('#bamsec-link a').attr('href', "https://www.bamsec.com/search?q=#{val}").text("https://www.bamsec.com/search?q=#{val}")
  $('#otcmarkets-link a').attr('href', "https://www.otcmarkets.com/stock/#{val}/quote").text("https://www.otcmarkets.com/stock/#{val}/quote")
  $('#finviz-link a').attr('href', "http://www.finviz.com/quote.ashx?t=#{val}").text("http://www.finviz.com/quote.ashx?t=#{val}")
  $('#google-link a').attr('href', "https://www.google.com/finance?q=#{val}").text("https://www.google.com/finance?q=#{val}")
  $('#yahoo-link a').attr('href', "https://finance.yahoo.com/quote/#{val}?p=#{val}").text("https://finance.yahoo.com/quote/#{val}?p=#{val}")
  $('#benzinga-link a').attr('href', "https://www.benzinga.com/stock/#{val}").text("https://www.benzinga.com/stock/#{val}")
  $('#tradingview-link a').attr('href', "https://www.tradingview.com/chart/?symbol=#{val}").text("https://www.tradingview.com/chart/?symbol=#{val}")
  $('#shortsqueeze-link a').attr('href', "http://shortsqueeze.com/?symbol=#{val}&submit=Short+Quote%E2%84%A2").text("http://shortsqueeze.com/?symbol=#{val}&submit=Short+Quote%E2%84%A2")
  $('#openinsider-link a').attr('href', "http://www.openinsider.com/search?q=#{val}").text("http://www.openinsider.com/search?q=#{val}")
  $('#seekingalpha-link a').attr('href', "https://seekingalpha.com/symbol/#{val}?s=#{val}").text("https://seekingalpha.com/symbol/#{val}?s=#{val}")
  $('#secgov-link a').attr('href', "https://www.sec.gov/cgi-bin/browse-edgar?CIK=#{val}&owner=exclude&action=getcompany").text("https://www.sec.gov/cgi-bin/browse-edgar?CIK=#{val}&owner=exclude&action=getcompany")

