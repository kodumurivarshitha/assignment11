using booksService as service from '../../srv/books-service';

annotate service.Books with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Value : descr,
        },
        {
            $Type : 'UI.DataField',
            Value : stock,
        },
        {
            $Type : 'UI.DataField',
            Value : price,
        },
        {
            $Type : 'UI.DataField',
            Value : currency_code,
        },
    ]
);
annotate service.Books with {
    authors @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Authors',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : authors_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'IsActiveEntity',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'HasActiveEntity',
            },
        ],
    }
};
annotate service.Books with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Value : stock,
            },
            {
                $Type : 'UI.DataField',
                Value : price,
            },
            {
                $Type : 'UI.DataField',
                Value : currency_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'authors_name',
                Value : authors_name,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Book overview',
            ID : 'Bookoverview',
            Target : '@UI.FieldGroup#Bookoverview',
        },
    ]
);
annotate service.Books with @(
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'book title',
            ID : 'booktitle',
            Target : '@UI.FieldGroup#booktitle',
        },
    ],
    UI.FieldGroup #booktitle : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : descr,
            },{
                $Type : 'UI.DataField',
                Value : price,
            },],
    }
);
annotate service.Books with @(
    UI.FieldGroup #Bookoverview : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : title,
            },{
                $Type : 'UI.DataField',
                Value : descr,
            },{
                $Type : 'UI.DataField',
                Value : stock,
            },{
                $Type : 'UI.DataField',
                Value : price,
            },{
                $Type : 'UI.DataField',
                Value : authors.name,
            },{
                $Type : 'UI.DataField',
                Value : currency_code,
            },],
    }
);
