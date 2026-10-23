select
    prod.product_id,
    prod.sku,
    prod.category_id,
    prod.name,
    prod.short_description,
    prod.long_description,
    prod.price,
    prod.is_active,
    prod.slug as product_url,
    prod.updated_at,
    prod.created_at,
    med_prod.file_path as product_image,
    med_prod.alt_text as product_image_alt,
    seo_prod.file_path as seo_product_image,
    seo_prod.alt_text as seo_product_image_alt,
    seo.canonical_url,
    seo.meta_title,
    seo.meta_description,
    seo.og_title,
    seo.og_description,
    seo.is_indexable
from product as prod
    inner join seo_metadata as seo on (seo.prod_cat_id = product_id and seo.type ='P')
    INNER JOIN
    media AS med_prod ON (prod.media_id = med_prod.media_id)
        INNER JOIN
    media AS seo_prod ON (seo.og_image = seo_prod.media_id)