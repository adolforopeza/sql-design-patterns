DELETE FROM patch_list WHERE patch_name = 'Micerveza\\StoreClassifier\\Setup\\Patch\\Data\\AddIsb2bCustomerAttribute';
DELETE FROM eav_attribute WHERE attribute_code = 'isb2b' AND entity_type_id = (SELECT entity_type_id FROM eav_entity_type WHERE entity_type_code = 'customer');
DELETE FROM eav_attribute WHERE attribute_code = 'isb2b' AND entity_type_id = (SELECT entity_type_id FROM eav_entity_type WHERE entity_type_code = 'customer');
DELETE FROM eav_attribute WHERE attribute_code = 'isb2b' AND entity_type_id = (SELECT entity_type_id FROM eav_entity_type WHERE entity_type_code = 'customer');