using PurchaseOrderService as service from '../../srv/services';
annotate service.PurchaseOrderItem with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Purchaseorderid}',
                Value : purchaseOrder_id,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Itemno}',
                Value : itemNo,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Materialid}',
                Value : materialId,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Materialdescr}',
                Value : materialDescr,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Quantity}',
                Value : quantity,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Unit}',
                Value : unit,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Unitprice}',
                Value : unitPrice,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Ncm}',
                Value : ncm,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Cfop}',
                Value : cfop,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Icms}',
                Value : icms,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Ipi}',
                Value : ipi,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Pis}',
                Value : pis,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Cofins}',
                Value : cofins,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Origin}',
                Value : origin,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Total}',
                Value : total,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Purchaseorderid}',
            Value : purchaseOrder_id,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Itemno}',
            Value : itemNo,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Materialid}',
            Value : materialId,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Materialdescr}',
            Value : materialDescr,
        },
        {
            $Type : 'UI.DataField',
            Value : ncm,
            Label : '{i18n>Ncm}',
        },
        {
            $Type : 'UI.DataField',
            Value : origin,
            Label : '{i18n>Origin}',
        },
        {
            $Type : 'UI.DataField',
            Value : total,
            Label : '{i18n>Total}',
        },
        {
            $Type : 'UI.DataField',
            Value : cfop,
            Label : '{i18n>Cfop}',
        },
        {
            $Type : 'UI.DataField',
            Value : quantity,
            Label : '{i18n>Quantity}',
        },
        {
            $Type : 'UI.DataField',
            Value : unit,
            Label : '{i18n>Unit}',
        },
        {
            $Type : 'UI.DataField',
            Value : unitPrice,
            Label : '{i18n>Unitprice}',
        },
        {
            $Type : 'UI.DataField',
            Value : icms,
            Label : '{i18n>Icms}',
        },
        {
            $Type : 'UI.DataField',
            Value : ipi,
            Label : '{i18n>Ipi}',
        },
        {
            $Type : 'UI.DataField',
            Value : pis,
            Label : '{i18n>Pis}',
        },
        {
            $Type : 'UI.DataField',
            Value : cofins,
            Label : '{i18n>Cofins}',
        },
    ],
    UI.SelectionFields : [
        purchaseOrder.id,
        purchaseOrder.supplierId,
        purchaseOrder.supplierUf,
        materialId,
    ],
);

annotate service.PurchaseOrderItem with {
    purchaseOrder @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'PurchaseOrder',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : purchaseOrder_id,
                ValueListProperty : 'id',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'supplierId',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'supplierCnpj',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'supplierUf',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'paymentTerms',
            },
        ],
    }
};

annotate service.PurchaseOrder with {
    id @(
        Common.Label : '{i18n>Purchaseorderid}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'PurchaseOrder',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : id,
                    ValueListProperty : 'id',
                },
            ],
        },
        Common.ValueListWithFixedValues : false,
    )
};

annotate service.PurchaseOrder with {
    supplierId @(
        Common.Label : '{i18n>Purchaseordersupplierid}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'PurchaseOrder',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : supplierId,
                    ValueListProperty : 'supplierId',
                },
            ],
        },
        Common.ValueListWithFixedValues : false,
    )
};

annotate service.PurchaseOrder with {
    supplierUf @(
        Common.Label : '{i18n>Purchaseordersupplieruf}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'PurchaseOrder',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : supplierUf,
                    ValueListProperty : 'supplierUf',
                },
            ],
        },
        Common.ValueListWithFixedValues : false,
    )
};

annotate service.PurchaseOrderItem with {
    materialId @(
        Common.Label : '{i18n>Materialid}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'PurchaseOrderItem',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : materialId,
                    ValueListProperty : 'materialId',
                },
            ],
        },
        Common.ValueListWithFixedValues : false,
        )
};

annotate service.PurchaseOrderItem with {
    materialDescr @Common.Label : '{i18n>Materialdescr}'
};

