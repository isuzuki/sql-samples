WITH RECURSIVE common_naive_tree AS (
  SELECT
    *
  FROM
    naive_tree
  WHERE
    id = 2
  UNION ALL
  SELECT
    naive_tree.*
  FROM
    common_naive_tree
  INNER JOIN
    naive_tree
  ON
    common_naive_tree.id = naive_tree.parent_id
)

SELECT * FROM common_naive_tree WHERE parent_id = 1