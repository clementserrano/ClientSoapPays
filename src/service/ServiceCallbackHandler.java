
/**
 * ServiceCallbackHandler.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */

    package service;

    /**
     *  ServiceCallbackHandler Callback class, Users can extend this class and implement
     *  their own receiveResult and receiveError methods.
     */
    public abstract class ServiceCallbackHandler{



    protected Object clientData;

    /**
    * User can pass in any object that needs to be accessed once the NonBlocking
    * Web service call is finished and appropriate method of this CallBack is called.
    * @param clientData Object mechanism by which the user can pass in user data
    * that will be avilable at the time this callback is called.
    */
    public ServiceCallbackHandler(Object clientData){
        this.clientData = clientData;
    }

    /**
    * Please use this constructor if you don't want to set any clientData
    */
    public ServiceCallbackHandler(){
        this.clientData = null;
    }

    /**
     * Get the client data
     */

     public Object getClientData() {
        return clientData;
     }

        
           /**
            * auto generated Axis2 call back method for consulterPays method
            * override this method for handling normal response from consulterPays operation
            */
           public void receiveResultconsulterPays(
                    service.ServiceStub.ConsulterPaysResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from consulterPays operation
           */
            public void receiveErrorconsulterPays(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for startTransaction method
            * override this method for handling normal response from startTransaction operation
            */
           public void receiveResultstartTransaction(
                    service.ServiceStub.StartTransactionResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from startTransaction operation
           */
            public void receiveErrorstartTransaction(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for consulterListePays method
            * override this method for handling normal response from consulterListePays operation
            */
           public void receiveResultconsulterListePays(
                    service.ServiceStub.ConsulterListePaysResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from consulterListePays operation
           */
            public void receiveErrorconsulterListePays(java.lang.Exception e) {
            }
                


    }
    