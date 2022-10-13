-- write your queries here

-- Part One --
-- 1 --
SELECT * FROM owners FULL OUTER JOIN vehicles ON owners.id = vehicles.owner_id;

-- 2 --
SELECT first_name, last_name, COUNT(owner_id) from owners JOIN vehicles ON owners.id = vehicles.owner_id
GROUP BY (first_name, last_name) ORDER BY first_name;

-- 3 --
SELECT first_name, last_name, ROUND(AVG(price)) AS average, COUNT(owner_id)
FROM owners JOIN vehicles on owners.id = vehicles.owner_id
GROUP BY (first_name, last_name)
HAVING COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 1000
ORDER BY first_name DESC;