SELECT
  *
FROM
  naive_tree AS t1
LEFT JOIN
  naive_tree AS t2
ON
  t1.id = t2.parent_id
LEFT JOIN
  naive_tree AS t3
ON
  t2.id = t3.parent_id