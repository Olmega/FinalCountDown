def search
 require 'soap/wsdlDriver'
 @title = 'Search Results'
 key = 'YOUR GOOGLE API KEY HERE'
 yoursite = 'YOUR SITE ADDRESS HERE'
 driver = SOAP::WSDLDriverFactory.new("http://api.google.com/GoogleSearch.wsdl").createDriver
 @results = driver.doGoogleSearch(key, @params['term']+" site:#{yoursite}", 0, 10, true, " ", false, " ", " ", " ")
end