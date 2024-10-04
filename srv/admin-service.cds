using {sap.capire.bookshop as MyProject} from '../db/scema';

// --> Define service for admin role
service AdminService @(requires: 'authenticated-user'){
    entity Books as projection on MyProject.Books;
    entity Authors  as projection on MyProject.Authors;
}