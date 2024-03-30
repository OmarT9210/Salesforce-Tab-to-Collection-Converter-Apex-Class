@isTest
private class TabToCollectionConverterTest {
    @isTest static void testIdListToCollectionConversion() {
        // Prepare test data
        String idList = '000000\t000001\t000002\t000003\t000004';

        // Initialize request
        TabToCollectionConverter.Request request = new TabToCollectionConverter.Request();
        request.idList = idList;

        // Call the invocable method
        List<TabToCollectionConverter.Request> requests = new List<TabToCollectionConverter.Request>{request};
        List<TabToCollectionConverter.Response> responses = TabToCollectionConverter.convertIdListToCollection(requests);

        // Assert the result
        System.assertEquals(1, responses.size(), 'Expected a single response');
        List<String> idCollection = responses[0].idCollection;
        System.assertEquals(5, idCollection.size(), 'Expected 5 IDs in the collection');
        System.assertEquals('000000', idCollection[0], 'Expected the first ID to be 000000');
        System.assertEquals('000001', idCollection[1], 'Expected the second ID to be 000001');
        System.assertEquals('000002', idCollection[2], 'Expected the third ID to be 000002');
        System.assertEquals('000003', idCollection[3], 'Expected the fourth ID to be 000003');
        System.assertEquals('000004', idCollection[4], 'Expected the fifth ID to be 000004');
    }
}