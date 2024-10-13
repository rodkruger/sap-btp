using {managed, Currency} from '@sap/cds/common';

namespace br.ndbs.ncminspector.db;

entity PurchaseOrder : managed {

    key id           : String;
        supplierId   : String;
        supplierCnpj : String;
        supplierUf   : String;
        paymentTerms : String;
        incoterms    : String;
        date         : String;

}

entity PurchaseOrderItem : managed {

    key id            : String;
        purchaseOrder : Association to PurchaseOrder;
        itemNo        : String;
        materialId    : String;
        materialDescr : String;
        quantity      : Decimal(13, 2);
        unit          : String;
        unitPrice     : Decimal(13, 2);
        ncm           : String;
        cfop          : String;
        icms          : Decimal(13, 2);
        ipi           : Decimal(13, 2);
        pis           : Decimal(13, 2);
        cofins        : Decimal(13, 2);
        origin        : String;
        total         : Decimal(13, 2);

}
