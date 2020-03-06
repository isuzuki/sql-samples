SELECT
  *
FROM
  naive_tree AS t1
LEFT JOIN
  naive_tree AS t2
ON
  t1.id = t2.parent_id
WHERE
  t2.parent_id = 1;