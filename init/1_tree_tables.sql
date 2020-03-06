CREATE TABLE naive_tree (
  id SERIAL,
  parent_id INT,
  name VARCHAR(128)
);

/*
root
 |-node_A
 |  |-node_A_node_A
 |     |-node_A_node_A_leaf_A
 |     |-node_A_node_A_leaf_B
 |-node_B
    |-node_B_node_A
    |-node_B_node_B
       |-node_B_node_B_leaf_A
*/

INSERT INTO naive_tree VALUES
(1, NULL, 'root'),
(2, 1, 'node_A'),
(3, 2, 'node_A_node_A'),
(4, 3, 'node_A_node_A_leaf_A'),
(5, 3, 'node_A_node_A_leaf_B'),
(6, 1, 'node_B'),
(7, 6, 'node_B_node_A'),
(8, 6, 'node_B_node_B'),
(9, 8, 'node_B_node_B_leaf_A');