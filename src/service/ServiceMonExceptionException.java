
/**
 * ServiceMonExceptionException.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */

package service;

public class ServiceMonExceptionException extends java.lang.Exception{

    private static final long serialVersionUID = 1538512812935L;
    
    private service.ServiceStub.ServiceMonException faultMessage;

    
        public ServiceMonExceptionException() {
            super("ServiceMonExceptionException");
        }

        public ServiceMonExceptionException(java.lang.String s) {
           super(s);
        }

        public ServiceMonExceptionException(java.lang.String s, java.lang.Throwable ex) {
          super(s, ex);
        }

        public ServiceMonExceptionException(java.lang.Throwable cause) {
            super(cause);
        }
    

    public void setFaultMessage(service.ServiceStub.ServiceMonException msg){
       faultMessage = msg;
    }
    
    public service.ServiceStub.ServiceMonException getFaultMessage(){
       return faultMessage;
    }
}
    