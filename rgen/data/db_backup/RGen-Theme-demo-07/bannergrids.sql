-- ------------------------------------
-- 
-- Module - bannergrids
-- 
-- ------------------------------------

DELETE FROM `rgen_modules` WHERE `section` LIKE '%bannergrids%';

INSERT INTO `rgen_modules` (`store_id`, `group`, `section`, `key`, `value`) VALUES ('0', 'rgen_module', 'rgen_bannergrids_set', 'set_rgtwh', '{"data":[{"module_id":"rg94P","layout_id":"1","position":"content_top","status":true,"sort_order":"3","container":"bx"}],"name":"Home - Banner grids"}');
INSERT INTO `rgen_modules` (`store_id`, `group`, `section`, `key`, `value`) VALUES ('0', 'rgen_module', 'rgen_bannergrids', 'rg94P', '{"common":{"title_status":false,"title":{"1":"en - No data"},"gt":"gt40","top":{"status":false,"html":{"1":"en - No data"}},"bottom":{"status":false,"html":[]},"left":{"status":false,"size":4,"html":[]},"right":{"status":false,"size":4,"html":[]}},"data":[{"depth":1,"status":true,"node_type":"row","node_title":"Row","item_data":{"node_type":"row","gutter":"gt20","margin_b":"mb20"},"items":[{"depth":2,"status":true,"node_type":"col","node_title":"Column","item_data":{"node_type":"col","column":{"col_size":"cl12","lg_desktop":"cl12","desktop":" d-xl12","tablet":" t-xl12","mob_xl":" m-xl12","mob_sm":" m-sm12","mob_xs":" m-xs12","classGroup":"cl12 d-xl12 t-xl12 m-xl12 m-sm12 m-xs12","border":[]},"content_view":{"gt":10}},"items":[{"depth":3,"status":true,"node_type":"block","node_title":"Slide show","item_data":{"node_type":"block","content":{"title":[],"description":[]},"setting":{"hoverstyle":"n","w":6,"h":4,"title_status":true,"description_status":true,"type":"slider","bnr_image":{"img":"..\\/image\\/no_image.jpg","alt":{"1":"en - No data"},"url":"","win":false},"slide_images":[{"img":"..\\/image\\/catalog\\/rgen\\/demo07_images\\/banners\\/other-banners\\/458x302_1.jpg","alt":{"1":"R.Gen - OpenCart Modern Store Design"},"url":"http:\\/\\/themeforest.net\\/item\\/rgen-opencart-modern-store-design\\/2699592?ref=R_GENESIS","win":true},{"img":"..\\/image\\/catalog\\/rgen\\/demo07_images\\/banners\\/other-banners\\/458x302_2.jpg","alt":{"1":"R.Gen - OpenCart Modern Store Design"},"url":"http:\\/\\/themeforest.net\\/item\\/rgen-opencart-modern-store-design\\/2699592?ref=R_GENESIS","win":true}],"slider":{"effect":"slide","speed":1500,"auto":true,"pause":2000,"continuous":true,"stoponhover":true,"pager":true,"arrows":true},"cssclass":""}},"items":[]},{"depth":3,"status":true,"node_type":"block","node_title":"1","item_data":{"node_type":"block","content":{"title":[],"description":[]},"setting":{"hoverstyle":"n","w":3,"h":2,"title_status":false,"description_status":false,"type":"normal","bnr_image":{"img":"..\\/image\\/catalog\\/rgen\\/demo07_images\\/banners\\/other-banners\\/224x146_1.jpg","alt":{"1":"R.Gen - OpenCart Modern Store Design"},"url":"http:\\/\\/themeforest.net\\/item\\/rgen-opencart-modern-store-design\\/2699592?ref=R_GENESIS","win":true},"slide_images":[{"img":"..\\/image\\/no_image.jpg","alt":[],"url":"","win":false}],"slider":{"effect":"slide","speed":1500,"auto":true,"pause":2000,"continuous":true,"stoponhover":true,"pager":true,"arrows":true},"cssclass":""}},"items":[]},{"depth":3,"status":true,"node_type":"block","node_title":"2","item_data":{"node_type":"block","content":{"title":[],"description":[]},"setting":{"hoverstyle":"n","w":3,"h":2,"title_status":false,"description_status":false,"type":"normal","bnr_image":{"img":"..\\/image\\/catalog\\/rgen\\/demo07_images\\/banners\\/other-banners\\/224x146_2.jpg","alt":{"1":"R.Gen - OpenCart Modern Store Design"},"url":"http:\\/\\/themeforest.net\\/item\\/rgen-opencart-modern-store-design\\/2699592?ref=R_GENESIS","win":true},"slide_images":[{"img":"..\\/image\\/no_image.jpg","alt":[],"url":"","win":false}],"slider":{"effect":"slide","speed":1500,"auto":true,"pause":2000,"continuous":true,"stoponhover":true,"pager":true,"arrows":true},"cssclass":""}},"items":[]},{"depth":3,"status":true,"node_type":"block","node_title":"3","item_data":{"node_type":"block","content":{"title":[],"description":[]},"setting":{"hoverstyle":"n","w":3,"h":2,"title_status":false,"description_status":false,"type":"normal","bnr_image":{"img":"..\\/image\\/catalog\\/rgen\\/demo07_images\\/banners\\/other-banners\\/224x146_3.jpg","alt":{"1":"R.Gen - OpenCart Modern Store Design"},"url":"http:\\/\\/themeforest.net\\/item\\/rgen-opencart-modern-store-design\\/2699592?ref=R_GENESIS","win":true},"slide_images":[{"img":"..\\/image\\/no_image.jpg","alt":[],"url":"","win":false}],"slider":{"effect":"slide","speed":1500,"auto":true,"pause":2000,"continuous":true,"stoponhover":true,"pager":true,"arrows":true},"cssclass":""}},"items":[]},{"depth":3,"status":true,"node_type":"block","node_title":"4","item_data":{"node_type":"block","content":{"title":[],"description":[]},"setting":{"hoverstyle":"n","w":3,"h":2,"title_status":false,"description_status":false,"type":"normal","bnr_image":{"img":"..\\/image\\/catalog\\/rgen\\/demo07_images\\/banners\\/other-banners\\/224x146_4.jpg","alt":{"1":"R.Gen - OpenCart Modern Store Design"},"url":"http:\\/\\/themeforest.net\\/item\\/rgen-opencart-modern-store-design\\/2699592?ref=R_GENESIS","win":true},"slide_images":[{"img":"..\\/image\\/no_image.jpg","alt":[],"url":"","win":false}],"slider":{"effect":"slide","speed":1500,"auto":true,"pause":2000,"continuous":true,"stoponhover":true,"pager":true,"arrows":true},"cssclass":""}},"items":[]}]}]}],"name":"Home - Banner grids"}');


DELETE FROM `rgen_modules_customize` WHERE `key` LIKE '%bannergrids%';



DELETE FROM `layout_module` WHERE `code` LIKE '%bannergrids%';

INSERT INTO `layout_module` (`layout_id`, `code`, `position`, `sort_order`) VALUES ('1', 'rgen_bannergrids.set_rgtwh.rg94P', 'content_top', '3');


DELETE FROM `setting` WHERE `code` LIKE '%bannergrids%';

INSERT INTO `setting` (`store_id`, `code`, `key`, `value`, `serialized`) VALUES ('0', 'rgen_bannergrids', 'rgen_bannergrids_R.set_rgtwh.rg94P', '1', '0');