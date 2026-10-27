DELETE FROM patch_list WHERE patch_name = 'Micerveza\\StoreClassifier\\Setup\\Patch\\Data\\AddIsb2bCustomerAttribute';
DELETE FROM eav_attribute WHERE attribute_code = 'isb2b' AND entity_type_id = (SELECT entity_type_id FROM eav_entity_type WHERE entity_type_code = 'customer');
DELETE FROM eav_attribute WHERE attribute_code = 'isb2b' AND entity_type_id = (SELECT entity_type_id FROM eav_entity_type WHERE entity_type_code = 'customer');
DELETE FROM eav_attribute WHERE attribute_code = 'isb2b' AND entity_type_id = (SELECT entity_type_id FROM eav_entity_type WHERE entity_type_code = 'customer');


SELECT ea.attribute_code,
       cea.is_used_in_grid,
       cea.is_searchable_in_grid,
       cea.is_visible_in_grid,
       cea.is_filterable_in_grid
FROM customer_eav_attribute AS cea
         JOIN eav_attribute AS ea ON ea.attribute_id = cea.attribute_id
         JOIN eav_entity_type AS eet ON eet.entity_type_id = ea.entity_type_id
WHERE eet.entity_type_code = 'customer'
  AND ea.attribute_code IN ('exact_customer_name', 'resourceId', 'debtorCode');


UPDATE customer_eav_attribute AS cea
    JOIN eav_attribute AS ea ON ea.attribute_id = cea.attribute_id
    JOIN eav_entity_type AS eet ON eet.entity_type_id = ea.entity_type_id
SET cea.is_used_in_grid = 0,
    cea.is_searchable_in_grid = 0,
    cea.is_visible_in_grid = 0,
    cea.is_filterable_in_grid = 0
WHERE eet.entity_type_code = 'customer'
  AND ea.attribute_code IN ('exact_customer_name', 'resourceId', 'debtorCode');