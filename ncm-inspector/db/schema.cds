using { managed } from '@sap/cds/common';

entity PurchaseOrder : managed {

    id : String;
    supplierId : String;
    supplierCnpj : String;
    supplierUf : String;
    paymentTerms : String;
    incoterms : String;
    date : String;

}

entity PurchaseOrderItem : managed {

    purchaseOrderId : String;
    id : String;
    materialId : String;
    materialDescr : String;
    quantity : String;
    unit : String;
    unitPrice : String;
    ncm : String;
    cfop : String;
    icms : String;
    ipi : String;
    pis : String;
    cofins : String;
    origin : String;
    total : String;

}