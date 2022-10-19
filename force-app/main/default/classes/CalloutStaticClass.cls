public class CalloutStaticClass {
    public static HttpResponse getInfoFromExternalService(String endpoint){
        
        Http h= new Http();
        
        HttpRequest req = new HttpRequest();
        req.setEndpoint(endpoint);
        req.setMethod('GET');
        
        HttpResponse res = new HttpResponse();
        res= h.send(req);
        return res;
    }
        

}