--7.2(3)
SELECT book_name FROM book WHERE sel_price>(SELECT AVG(sel_price)FROM book);
COMMIT;
