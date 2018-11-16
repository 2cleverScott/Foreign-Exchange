use SOAP::Lite;
print "Rate", ",", "Country 1",",", "Country 2","\n";
  print SOAP::Lite
    -> service('http://www.xmethods.net/sd/2001/CurrencyExchangeService.wsdl')
    -> getRate('USA', 'JAPAN'),",","YEN",",","US","\n";
 print SOAP::Lite
	-> service('http://www.xmethods.net/sd/2001/CurrencyExchangeService.wsdl')
    -> getRate('USA', 'euro'),",","US",",","EURO","\n";
print SOAP::Lite
	-> service('http://www.xmethods.net/sd/2001/CurrencyExchangeService.wsdl')
    -> getRate('EURO', 'USA'),",","EURO",",","US","\n";
print SOAP::Lite
    -> service('http://www.xmethods.net/sd/2001/CurrencyExchangeService.wsdl')
    -> getRate('Japan', 'USA'),",","US",",","YEN","\n";

