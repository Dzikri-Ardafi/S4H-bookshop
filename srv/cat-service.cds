using { sap.capire.bookshop as MyCatalogSchema } from '../db/scema';

service CatalogService {

    // --> service method to get all books
    @readonly entity Books as select from MyCatalogSchema.Books{
        *,
        author.name as AuthorName
    } excluding {createdBy, modifiedBy};

    @requires: 'authenticated-user'
    action submitOrder(book: Books:ID, qty: Integer)
}
