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
  $('#bamsec-link a').attr('href', "https://www.bamsec.com/search?q=#{val}")
                     .text("https://www.bamsec.com/search?q=#{val}")

  $('#otcmarkets-link a').attr('href', "https://www.otcmarkets.com/stock/#{val}/quote")
                         .text("https://www.otcmarkets.com/stock/#{val}/quote")

  $('#finviz-link a').attr('href', "http://www.finviz.com/quote.ashx?t=#{val}")
                     .text("http://www.finviz.com/quote.ashx?t=#{val}")

  $('#google-link a').attr('href', "https://www.google.com/finance?q=#{val}")
                     .text("https://www.google.com/finance?q=#{val}")

  $('#yahoo-link a').attr('href', "https://finance.yahoo.com/quote/#{val}?p=#{val}")
                    .text("https://finance.yahoo.com/quote/#{val}?p=#{val}")

  $('#benzinga-link a').attr('href', "https://www.benzinga.com/stock/#{val}")
                       .text("https://www.benzinga.com/stock/#{val}")

  $('#tradingview-link a').attr('href', "https://www.tradingview.com/chart/?symbol=#{val}")
                          .text("https://www.tradingview.com/chart/?symbol=#{val}")

  $('#shortsqueeze-link a').attr('href', "http://shortsqueeze.com/?symbol=#{val}&submit=Short+Quote%E2%84%A2")
                           .text("http://shortsqueeze.com/?symbol=#{val}&submit=Short+Quote%E2%84%A2")

  $('#openinsider-link a').attr('href', "http://www.openinsider.com/search?q=#{val}")
                          .text("http://www.openinsider.com/search?q=#{val}")

  $('#seekingalpha-link a').attr('href', "https://seekingalpha.com/symbol/#{val}?s=#{val}")
                           .text("https://seekingalpha.com/symbol/#{val}?s=#{val}")

  $('#secgov-link a').attr('href', "https://www.sec.gov/cgi-bin/browse-edgar?CIK=#{val}&owner=exclude&action=getcompany")
                     .text("https://www.sec.gov/cgi-bin/browse-edgar?CIK=#{val}&owner=exclude&action=getcompany")

  $('#twitter-link a').attr('href', "https://twitter.com/search?q=%24#{val}")
                      .text("https://twitter.com/search?q=%24#{val}")

  $('#twitter-adv-link a').attr('href', "https://twitter.com/search?l=&q=%23%24#{val}%20from%3Aadamfeuerstein&src=typd&lang=en")
                      .text("https://twitter.com/search?l=&q=%23%24#{val}%20from%3Aadamfeuerstein&src=typd&lang=en")
  $('#bigcharts-link a').attr('href', "http://bigcharts.marketwatch.com/advchart/frames/frames.asp?show=&insttype=Stock&symb=#{val}&time=18&startdate=1%2F4%2F1999&enddate=7%2F10%2F2017&freq=8&compidx=aaaaa%3A0&comptemptext=&comp=none&ma=0&maval=9&uf=32&lf=1&lf2=0&lf3=0&type=4&style=320&size=3&x=52&y=11&timeFrameToggle=false&compareToToggle=false&indicatorsToggle=false&chartStyleToggle=false&state=11")
                          .text("http://bigcharts.marketwatch.com/advchart/frames/frames.asp?show=&insttype=Stock&symb=#{val}...")




