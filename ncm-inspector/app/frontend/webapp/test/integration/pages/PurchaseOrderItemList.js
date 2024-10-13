sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'br.ndbs.ncminspector.ui.frontend',
            componentId: 'PurchaseOrderItemList',
            contextPath: '/PurchaseOrderItem'
        },
        CustomPageDefinitions
    );
});