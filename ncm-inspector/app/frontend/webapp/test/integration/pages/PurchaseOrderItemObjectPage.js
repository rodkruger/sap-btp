sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'br.ndbs.ncminspector.ui.frontend',
            componentId: 'PurchaseOrderItemObjectPage',
            contextPath: '/PurchaseOrderItem'
        },
        CustomPageDefinitions
    );
});