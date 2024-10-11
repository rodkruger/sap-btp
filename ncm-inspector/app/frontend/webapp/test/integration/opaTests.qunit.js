sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'br/ndbs/ncminspector/ui/frontend/test/integration/FirstJourney',
		'br/ndbs/ncminspector/ui/frontend/test/integration/pages/PurchaseOrderItemList',
		'br/ndbs/ncminspector/ui/frontend/test/integration/pages/PurchaseOrderItemObjectPage'
    ],
    function(JourneyRunner, opaJourney, PurchaseOrderItemList, PurchaseOrderItemObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('br/ndbs/ncminspector/ui/frontend') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePurchaseOrderItemList: PurchaseOrderItemList,
					onThePurchaseOrderItemObjectPage: PurchaseOrderItemObjectPage
                }
            },
            opaJourney.run
        );
    }
);