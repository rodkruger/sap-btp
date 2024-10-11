using {managed} from '@sap/cds/common';

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
        quantity      : String;
        unit          : String;
        unitPrice     : String;
        ncm           : String;
        cfop          : String;
        icms          : String;
        ipi           : String;
        pis           : String;
        cofins        : String;
        origin        : String;
        total         : String;

}
