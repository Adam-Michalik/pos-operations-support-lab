-- POS Operations Support Lab
-- Sample PostgreSQL queries

-- 1. Display all POS terminals
SELECT *
FROM pos_terminals;


-- 2. Find offline POS terminals
SELECT terminal_name, ip_address, status, last_seen
FROM pos_terminals
WHERE status = 'OFFLINE';


-- 3. Display terminals with their store information
SELECT
    p.terminal_name,
    s.store_name,
    s.city,
    p.ip_address,
    p.status
FROM pos_terminals p
JOIN stores s ON p.store_id = s.store_id;


-- 4. Count terminals by status
SELECT
    status,
    COUNT(*) AS terminal_count
FROM pos_terminals
GROUP BY status;


-- 5. Find the latest communication timestamp
SELECT
    terminal_name,
    last_seen
FROM pos_terminals
ORDER BY last_seen DESC;


-- 6. Find terminals that have not communicated
-- within the last hour
SELECT
    terminal_name,
    status,
    last_seen
FROM pos_terminals
WHERE last_seen < NOW() - INTERVAL '1 hour';
