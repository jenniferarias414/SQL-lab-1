SELECT COUNT(*)
FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total)
FROM invoice;

SELECT MIN(total)
FROM invoice;

SELECT *
FROM invoice
WHERE total > 5;

SELECT COUNT(*)
FROM invoice
WHERE total < 5;

SELECT COUNT(*)
FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total)
FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT SUM(total)
FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');
-- or SELECT SUM(total) FROM invoice;  for total of ALL orders

UPDATE invoice
SET total = 24
WHERE invoice_id = 5;

DELETE FROM invoice WHERE invoice_id = 1;
-- can't do this b/c it's dependent on other stuff....
-- Delete the invoice with an invoice_id of 1.