SELECT 
    cat.category_id,
    cat.is_active,
    cat.name as category_name,
    cat.short_description,
    cat.long_description,
    cat.slug,
    cat.updated_at,
    cat.created_at,
    med_cat.file_path as product_img,
    seo.canonical_url,
	med_cat.alt_text as image_alt_img,
    seo.meta_title,
    seo.meta_description,
    seo.og_title,
    seo.og_description,
    seo_cat.file_path as og_image,
    seo.is_indexable
FROM
    category AS cat
        INNER JOIN
    seo_metadata AS seo ON (cat.category_id = seo.prod_cat_id and seo.type ='C')
        INNER JOIN
    media AS med_cat ON (cat.media_id = med_cat.media_id)
        INNER JOIN
    media AS seo_cat ON (seo.og_image = seo_cat.media_id)
where seo.type ='C';