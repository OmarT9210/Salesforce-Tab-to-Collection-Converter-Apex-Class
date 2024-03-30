public class TabToCollectionConverter {
    public class Request {
        @InvocableVariable(label='ID List' required=true)
        public String idList;
    }

    public class Response {
        @InvocableVariable(label='ID Collection')
        public List<String> idCollection;
    }

    @InvocableMethod(label='Convert ID List to Collection')
    public static List<Response> convertIdListToCollection(List<Request> requests) {
        List<Response> responses = new List<Response>();
        for (Request request : requests) {
            String[] idArray = request.idList.split('\\s+');
            List<String> idCollection = new List<String>(idArray);

            Response res = new Response();
            res.idCollection = idCollection;
            responses.add(res);
        }
        return responses;
    }
}