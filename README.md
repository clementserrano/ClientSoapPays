# ClientSoapPays

Lien WSDL : http://localhost:8080/WebServicePays/services/Service?wsdl

## Correction erreur AxisFault :
Dans WebServicePays > WebContent > WEB-INF > services > Service > META-INF > services.xml

Remplacer "2004/08" par "ns" :

ex : mep="http://www.w3.org/ns/wsdl/in-only"
