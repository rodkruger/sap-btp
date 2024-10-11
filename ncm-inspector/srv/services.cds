using { br.ndbs.ncminspector.db as my } from '../db/schema';

service PurchaseOrderService {

    @readonly
    entity PurchaseOrder as projection on my.PurchaseOrder;

    @readonly
    entity PurchaseOrderItem as projection on my.PurchaseOrderItem;

}