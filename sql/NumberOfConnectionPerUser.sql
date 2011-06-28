-- Get the Number of connection per server
--
SELECT osuser || '@' || trim(machine) machine, username, count(*) connections
   FROM v$session GROUP BY machine, osuser, username
  ORDER BY machine, username;