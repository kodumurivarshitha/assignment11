using {books as b} from '../db/schema';

@path : 'service/books'
service booksService{
    entity Books  as projection on b.Books;
    entity Authors as projection on b.Authors;
}