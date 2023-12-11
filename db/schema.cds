namespace books;

using{managed,cuid,Currency} from '@sap/cds/common';

//Create a entity called Books with aspects manged, cuid ,and  with fields
//title as string,   descr as string,  stock as integer,  price as Decimal, currency as Currency.

entity Books : managed,cuid {

    @title : 'Title of book'
    key title : String;

    @title : 'Description'
    descr : String;

    @title : 'Stock'
    stock : Integer;

    @title : 'Price'
    price : Decimal;

    @title : 'Currency'
    currency : Currency;

    author : Association to one Authors;
}
//Create a entity called Authors with aspects manged, cuid  and with fields, [Authors has only one propety]
 
//name as string.

 entity Authors : managed,cuid {

    @title : 'Name'
    key name : String;
 }