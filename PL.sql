SELECT (SELECT ROUND(SUM(pl.debit),2) AS debit
FROM (
	SELECT debit, credit, `account`, statement_section
	FROM journal_entry AS j_entry
	INNER JOIN journal_entry_line_item AS j_entry_item
	ON j_entry.journal_entry_id = j_entry_item.journal_entry_id
	INNER JOIN `account` AS a
	ON a.account_id = j_entry_item.account_id
	INNER JOIN statement_section AS ss
	ON ss.statement_section_id = a.profit_loss_section_id
    INNER JOIN company AS c
    ON c.company_id = ss.company_id
	WHERE a.profit_loss_section_id <> 0 AND YEAR(j_entry.entry_date) = 2015) AS pl
GROUP BY pl.statement_section
having pl.statement_section = 'REVENUE')

 - 
 
 (SELECT ROUND(SUM(pl.debit),2) AS debit
FROM (
	SELECT debit, credit, `account`, statement_section
	FROM journal_entry AS j_entry
	INNER JOIN journal_entry_line_item AS j_entry_item
	ON j_entry.journal_entry_id = j_entry_item.journal_entry_id
	INNER JOIN `account` AS a
	ON a.account_id = j_entry_item.account_id
	INNER JOIN statement_section AS ss
	ON ss.statement_section_id = a.profit_loss_section_id
    INNER JOIN company AS c
    ON c.company_id = ss.company_id
	WHERE a.profit_loss_section_id <> 0 AND YEAR(j_entry.entry_date) = 2015) AS pl
GROUP BY pl.statement_section
having pl.statement_section = 'COST OF GOODS AND SERVICEs') as 'Gross_margin'
from `account`
limit 1;

-- fffffffffffffffffffffffffffff

SELECT (SELECT ROUND(SUM(pl.debit),2) AS debit
FROM (
	SELECT debit, credit, `account`, statement_section
	FROM journal_entry AS j_entry
	INNER JOIN journal_entry_line_item AS j_entry_item
	ON j_entry.journal_entry_id = j_entry_item.journal_entry_id
	INNER JOIN `account` AS a
	ON a.account_id = j_entry_item.account_id
	INNER JOIN statement_section AS ss
	ON ss.statement_section_id = a.profit_loss_section_id
    INNER JOIN company AS c
    ON c.company_id = ss.company_id
	WHERE a.profit_loss_section_id <> 0 AND YEAR(j_entry.entry_date) = 2015) AS pl
GROUP BY pl.statement_section
having pl.statement_section = 'REVENUE')

 - 
 
 (SELECT ROUND(SUM(pl.debit),2) AS debit
FROM (
	SELECT debit, credit, `account`, statement_section
	FROM journal_entry AS j_entry
	INNER JOIN journal_entry_line_item AS j_entry_item
	ON j_entry.journal_entry_id = j_entry_item.journal_entry_id
	INNER JOIN `account` AS a
	ON a.account_id = j_entry_item.account_id
	INNER JOIN statement_section AS ss
	ON ss.statement_section_id = a.profit_loss_section_id
    INNER JOIN company AS c
    ON c.company_id = ss.company_id
	WHERE a.profit_loss_section_id <> 0 AND YEAR(j_entry.entry_date) = 2015) AS pl
GROUP BY pl.statement_section
having pl.statement_section = 'COST OF GOODS AND SERVICEs')

+

 (SELECT ROUND(SUM(pl.debit),2) AS debit
FROM (
	SELECT debit, credit, `account`, statement_section
	FROM journal_entry AS j_entry
	INNER JOIN journal_entry_line_item AS j_entry_item
	ON j_entry.journal_entry_id = j_entry_item.journal_entry_id
	INNER JOIN `account` AS a
	ON a.account_id = j_entry_item.account_id
	INNER JOIN statement_section AS ss
	ON ss.statement_section_id = a.profit_loss_section_id
    INNER JOIN company AS c
    ON c.company_id = ss.company_id
	WHERE a.profit_loss_section_id <> 0 AND YEAR(j_entry.entry_date) = 2015) AS pl
GROUP BY pl.statement_section
having pl.statement_section = 'OTHER INCOME')

-

 (SELECT ROUND(SUM(pl.debit),2) AS debit
FROM (
	SELECT debit, credit, `account`, statement_section
	FROM journal_entry AS j_entry
	INNER JOIN journal_entry_line_item AS j_entry_item
	ON j_entry.journal_entry_id = j_entry_item.journal_entry_id
	INNER JOIN `account` AS a
	ON a.account_id = j_entry_item.account_id
	INNER JOIN statement_section AS ss
	ON ss.statement_section_id = a.profit_loss_section_id
    INNER JOIN company AS c
    ON c.company_id = ss.company_id
	WHERE a.profit_loss_section_id <> 0 AND YEAR(j_entry.entry_date) = 2015) AS pl
GROUP BY pl.statement_section
having pl.statement_section = 'SELLING EXPENSES')

-

 (SELECT ROUND(SUM(pl.debit),2) AS debit
FROM (
	SELECT debit, credit, `account`, statement_section
	FROM journal_entry AS j_entry
	INNER JOIN journal_entry_line_item AS j_entry_item
	ON j_entry.journal_entry_id = j_entry_item.journal_entry_id
	INNER JOIN `account` AS a
	ON a.account_id = j_entry_item.account_id
	INNER JOIN statement_section AS ss
	ON ss.statement_section_id = a.profit_loss_section_id
    INNER JOIN company AS c
    ON c.company_id = ss.company_id
	WHERE a.profit_loss_section_id <> 0 AND YEAR(j_entry.entry_date) = 2015) AS pl
GROUP BY pl.statement_section
having pl.statement_section = 'OTHER EXPENSES')


 as 'EARNING'
from `account`
limit 1