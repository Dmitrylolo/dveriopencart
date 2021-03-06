<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="button" onclick="SaS();" type="button" form="form-product" data-toggle="tooltip" title="save and stay" class="btn btn-primary"><i class="fa fa-repeat"></i></button>
        <button type="submit" form="form-product" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
          <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_form; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-product" class="form-horizontal">
          <ul class="nav nav-tabs" id="myTab">
            <li class="active"><a href="#tab-general" data-toggle="tab"><?php echo $tab_general; ?></a></li>
            <li><a href="#tab-data" data-toggle="tab"><?php echo $tab_data; ?></a></li>
            <li><a href="#tab-links" data-toggle="tab"><?php echo $tab_links; ?></a></li>
            <li><a href="#tab-attribute" data-toggle="tab">Характеристики</a></li>
            <li><a href="#tab-option" data-toggle="tab"><?php echo $tab_option; ?></a></li>
            <li style="display: none;"><a href="#tab-recurring" data-toggle="tab"><?php echo $tab_recurring; ?></a></li>
            <li><a href="#tab-discount" data-toggle="tab"><?php echo $tab_discount; ?></a></li>
            <li><a href="#tab-special" data-toggle="tab"><?php echo $tab_special; ?></a></li>
            <li><a href="#tab-image" data-toggle="tab"><?php echo $tab_image; ?></a></li>
            <li style="display: none;"><a href="#tab-reward" data-toggle="tab"><?php echo $tab_reward; ?></a></li>
            <li style="display: none;"><a href="#tab-design" data-toggle="tab"><?php echo $tab_design; ?></a></li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab-general">
              <ul class="nav nav-tabs" id="language">
                <?php foreach ($languages as $language) { ?>
                <li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                <?php } ?>
              </ul>
              <div class="tab-content">
                <?php foreach ($languages as $language) { ?>
                <div class="form-group">
                <label class="col-sm-2 control-label" for="input-manufacturer"><span data-toggle="tooltip" title="<?php echo $help_manufacturer; ?>"><?php echo $entry_manufacturer; ?></span></label>
                <div class="col-sm-10">
                  <input type="text" name="manufacturer" value="<?php echo $manufacturer ?>" placeholder="<?php echo $entry_manufacturer; ?>" id="input-manufacturer" class="form-control" />
                  <input type="hidden" name="manufacturer_id" value="<?php echo $manufacturer_id; ?>" />
                </div>
              </div>
               <div class="form-group required">
                    <label class="col-sm-2 control-label" for="input-name<?php echo $language['language_id']; ?>"><?php echo $entry_name; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="product_description[<?php echo $language['language_id']; ?>][name]" value="<?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['name'] : ''; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name<?php echo $language['language_id']; ?>" class="form-control" />
                      <?php if (isset($error_name[$language['language_id']])) { ?>
                      <div class="text-danger"><?php echo $error_name[$language['language_id']]; ?></div>
                      <?php } ?>
                    </div>
                  </div>
                                <div class="form-group" >
                <label class="col-sm-2 control-label" for="input-sku">Наименование</label>
                <div class="col-sm-10">
                  <input type="text" name="sku" value="<?php echo $sku; ?>" placeholder="Наименование" id="input-sku" class="form-control" />
                </div>
              </div>
                <div class="tab-pane" id="language<?php echo $language['language_id']; ?>">
                 <div class="form-group">
                <label class="col-sm-2 control-label" for="input-image"><?php echo $entry_image; ?></label>
                <div class="col-sm-10">
                  <a href="" id="thumb-image" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                  <input type="hidden" name="image" value="<?php echo $image; ?>" id="input-image" />
                </div>
                
              </div> 
                 <div class="form-group required">
                <label class="col-sm-2 control-label" for="input-model"><?php echo $entry_model; ?></label>
                <div class="col-sm-10">
                 <input type="hidden" value="<?php echo (float)$model; ?>" name="product_id"/>
                  <input type="text" name="model" value="<?php echo (float)$model; ?>" placeholder="<?php echo $entry_model; ?>" id="input-model" class="form-control" />
                  <?php if ($error_model) { ?>
                  <div class="text-danger"><?php echo $error_model; ?></div>
                  <?php } ?>
                </div>
              </div>
                 <div class="form-group">
                <label class="col-sm-2 control-label" for="input-price"><?php echo $entry_price; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="price" value="<?php echo $price; ?>" placeholder="<?php echo $entry_price; ?>" id="input-price" class="form-control" />
                </div>
              </div>
                  
                  <div class="form-group">
                <label class="col-sm-2 control-label" for="input-keyword"><span data-toggle="tooltip" title="<?php echo $help_keyword; ?>"><?php echo $entry_keyword; ?></span></label>
                <div class="col-sm-10">
                  <input type="text" name="keyword" value="<?php echo $keyword; ?>" placeholder="<?php echo $entry_keyword; ?>" id="input-keyword" class="form-control" />
                  <?php if ($error_keyword) { ?>
                  <div class="text-danger"><?php echo $error_keyword; ?></div>
                  <?php } ?>               
                </div>
              </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-description<?php echo $language['language_id']; ?>"><?php echo $entry_description; ?></label>
                    <div class="col-sm-10">
                      <textarea name="product_description[<?php echo $language['language_id']; ?>][description]" placeholder="<?php echo $entry_description; ?>" id="input-description<?php echo $language['language_id']; ?>"><?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['description'] : ''; ?></textarea>
                    </div>
                  </div>
                  <div class="form-group required">
                    <label class="col-sm-2 control-label" for="input-meta-title<?php echo $language['language_id']; ?>"><?php echo $entry_meta_title; ?></label>
                    <div class="col-sm-10">
                      <input type="text" name="product_description[<?php echo $language['language_id']; ?>][meta_title]" value="<?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['meta_title'] : ''; ?>" placeholder="<?php echo $entry_meta_title; ?>" id="input-meta-title<?php echo $language['language_id']; ?>" class="form-control" />
                      <?php if (isset($error_meta_title[$language['language_id']])) { ?>
                      <div class="text-danger"><?php echo $error_meta_title[$language['language_id']]; ?></div>
                      <?php } ?>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-meta-description<?php echo $language['language_id']; ?>"><?php echo $entry_meta_description; ?></label>
                    <div class="col-sm-10">
                      <textarea name="product_description[<?php echo $language['language_id']; ?>][meta_description]" rows="5" placeholder="<?php echo $entry_meta_description; ?>" id="input-meta-description<?php echo $language['language_id']; ?>" class="form-control"><?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['meta_description'] : ''; ?></textarea>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="input-meta-keyword<?php echo $language['language_id']; ?>"><?php echo $entry_meta_keyword; ?></label>
                    <div class="col-sm-10">
                      <textarea name="product_description[<?php echo $language['language_id']; ?>][meta_keyword]" rows="5" placeholder="<?php echo $entry_meta_keyword; ?>" id="input-meta-keyword<?php echo $language['language_id']; ?>" class="form-control"><?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['meta_keyword'] : ''; ?></textarea>
                    </div>
                  </div>
                  <div class="form-group" style="display: none;">
                    <label class="col-sm-2 control-label" for="input-tag<?php echo $language['language_id']; ?>"><span data-toggle="tooltip" title="<?php echo $help_tag; ?>"><?php echo $entry_tag; ?></span></label>
                    <div class="col-sm-10">
                      <input type="text" name="product_description[<?php echo $language['language_id']; ?>][tag]" value="<?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['tag'] : ''; ?>" placeholder="<?php echo $entry_tag; ?>" id="input-tag<?php echo $language['language_id']; ?>" class="form-control" />
                    </div>
                  </div>
                </div>
                <?php } ?>
              </div>
            </div>
            <div class="tab-pane" id="tab-data">
                         
              

              <div class="form-group" style="display: none;">
                <label class="col-sm-2 control-label" for="input-upc"><span data-toggle="tooltip" title="<?php echo $help_upc; ?>"><?php echo $entry_upc; ?></span></label>
                <div class="col-sm-10">
                  <input type="text" name="upc" value="<?php echo $upc; ?>" placeholder="<?php echo $entry_upc; ?>" id="input-upc" class="form-control" />
                </div>
              </div>
              <div class="form-group" style="display: none;">
                <label class="col-sm-2 control-label" for="input-ean"><span data-toggle="tooltip" title="<?php echo $help_ean; ?>"><?php echo $entry_ean; ?></span></label>
                <div class="col-sm-10">
                  <input type="text" name="ean" value="<?php echo $ean; ?>" placeholder="<?php echo $entry_ean; ?>" id="input-ean" class="form-control" />
                </div>
              </div>
              <div class="form-group" style="display: none;">
                <label class="col-sm-2 control-label" for="input-jan"><span data-toggle="tooltip" title="<?php echo $help_jan; ?>"><?php echo $entry_jan; ?></span></label>
                <div class="col-sm-10">
                  <input type="text" name="jan" value="<?php echo $jan; ?>" placeholder="<?php echo $entry_jan; ?>" id="input-jan" class="form-control" />
                </div>
              </div>
              <div class="form-group" style="display: none;">
                <label class="col-sm-2 control-label" for="input-isbn"><span data-toggle="tooltip" title="<?php echo $help_isbn; ?>"><?php echo $entry_isbn; ?></span></label>
                <div class="col-sm-10">
                  <input type="text" name="isbn" value="<?php echo $isbn; ?>" placeholder="<?php echo $entry_isbn; ?>" id="input-isbn" class="form-control" />
                </div>
              </div>
              <div class="form-group" style="display: none;">
                <label class="col-sm-2 control-label" for="input-mpn"><span data-toggle="tooltip" title="<?php echo $help_mpn; ?>"><?php echo $entry_mpn; ?></span></label>
                <div class="col-sm-10">
                  <input type="text" name="mpn" value="<?php echo $mpn; ?>" placeholder="<?php echo $entry_mpn; ?>" id="input-mpn" class="form-control" />
                </div>
              </div>
              <div class="form-group" style="display: none;">
                <label class="col-sm-2 control-label" for="input-location"><?php echo $entry_location; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="location" value="<?php echo $location; ?>" placeholder="<?php echo $entry_location; ?>" id="input-location" class="form-control" />
                </div>
              </div>
              
              <div class="form-group" style="display: none;">
                <label class="col-sm-2 control-label" for="input-tax-class"><?php echo $entry_tax_class; ?></label>
                <div class="col-sm-10">
                  <select name="tax_class_id" id="input-tax-class" class="form-control">
                    <option value="0"><?php echo $text_none; ?></option>
                    <?php foreach ($tax_classes as $tax_class) { ?>
                    <?php if ($tax_class['tax_class_id'] == $tax_class_id) { ?>
                    <option value="<?php echo $tax_class['tax_class_id']; ?>" selected="selected"><?php echo $tax_class['title']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $tax_class['tax_class_id']; ?>"><?php echo $tax_class['title']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
                           <div class="form-group">
                <label class="col-sm-2 control-label" for="input-stock-status"><span data-toggle="tooltip" title="<?php echo $help_stock_status; ?>"><?php echo $entry_stock_status; ?></span></label>
                <div class="col-sm-10">
                  <select name="stock_status_id" id="input-stock-status" class="form-control">
                    <?php foreach ($stock_statuses as $stock_status) { ?>
                    <?php if ($stock_status['stock_status_id'] == $stock_status_id) { ?>
                    <option value="<?php echo $stock_status['stock_status_id']; ?>" selected="selected"><?php echo $stock_status['name']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $stock_status['stock_status_id']; ?>"><?php echo $stock_status['name']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
                            <div class="form-group">
                <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
                <div class="col-sm-10">
                  <select name="status" id="input-status" class="form-control">
                    <?php if ($status) { ?>
                    <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                    <option value="0"><?php echo $text_disabled; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_enabled; ?></option>
                    <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
                            <div class="form-group">
                <label class="col-sm-2 control-label" for="input-filter"><span data-toggle="tooltip" title="<?php echo $help_filter; ?>"><?php echo $entry_filter; ?></span></label>
                <div class="col-sm-10">
                  <input type="text" name="filter" value="" placeholder="<?php echo $entry_filter; ?>" id="input-filter" class="form-control" />
                  <div id="product-filter" class="well well-sm" style="height: 150px; overflow: auto;">
                    <?php foreach ($product_filters as $product_filter) { ?>
                    <div id="product-filter<?php echo $product_filter['filter_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $product_filter['name']; ?>
                      <input type="hidden" name="product_filter[]" value="<?php echo $product_filter['filter_id']; ?>" />
                    </div>
                    <?php } ?>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-quantity"><?php echo $entry_quantity; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="quantity" value="<?php echo $quantity; ?>" placeholder="<?php echo $entry_quantity; ?>" id="input-quantity" class="form-control" />
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-minimum"><span data-toggle="tooltip" title="<?php echo $help_minimum; ?>"><?php echo $entry_minimum; ?></span></label>
                <div class="col-sm-10">
                  <input type="text" name="minimum" value="<?php echo $minimum; ?>" placeholder="<?php echo $entry_minimum; ?>" id="input-minimum" class="form-control" />
                </div>
              </div>
              <div class="form-group" style="display: none;">
                <label class="col-sm-2 control-label" for="input-subtract"><?php echo $entry_subtract; ?></label>
                <div class="col-sm-10">
                  <select name="subtract" id="input-subtract" class="form-control">
                    <?php if ($subtract) { ?>
                    <option value="1"><?php echo $text_yes; ?></option>
                    <option value="0" selected="selected"><?php echo $text_no; ?></option>
                    <?php } else { ?>
                    <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                    <option value="0"><?php echo $text_no; ?></option>
                    
                    <?php } ?>
                  </select>
                </div>
              </div>
              
              <div class="form-group" style="display: none;">
                <label class="col-sm-2 control-label"><?php echo $entry_shipping; ?></label>
                <div class="col-sm-10">
                  <label class="radio-inline">
                    <?php if ($shipping) { ?>
                    <input type="radio" name="shipping" value="1" checked="checked" />
                    <?php echo $text_yes; ?>
                    <?php } else { ?>
                    <input type="radio" name="shipping" value="1" />
                    <?php echo $text_yes; ?>
                    <?php } ?>
                  </label>
                  <label class="radio-inline">
                    <?php if (!$shipping) { ?>
                    <input type="radio" name="shipping" value="0" checked="checked" />
                    <?php echo $text_no; ?>
                    <?php } else { ?>
                    <input type="radio" name="shipping" value="0" />
                    <?php echo $text_no; ?>
                    <?php } ?>
                  </label>
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-date-available"><?php echo $entry_date_available; ?></label>
                <div class="col-sm-3">
                  <div class="input-group date">
                    <input type="text" name="date_available" value="<?php echo $date_available; ?>" placeholder="<?php echo $entry_date_available; ?>" data-date-format="YYYY-MM-DD" id="input-date-available" class="form-control" />
                    <span class="input-group-btn">
                    <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                    </span></div>
                </div>
              </div>
              <div class="form-group"  style="display: none;">
                <label class="col-sm-2 control-label" for="input-length"><?php echo $entry_dimension; ?></label>
                <div class="col-sm-10">
                  <div class="row">
                    <div class="col-sm-4">
                      <input type="text" name="length" value="<?php echo $length; ?>" placeholder="<?php echo $entry_length; ?>" id="input-length" class="form-control" />
                    </div>
                    <div class="col-sm-4">
                      <input type="text" name="width" value="<?php echo $width; ?>" placeholder="<?php echo $entry_width; ?>" id="input-width" class="form-control" />
                    </div>
                    <div class="col-sm-4">
                      <input type="text" name="height" value="<?php echo $height; ?>" placeholder="<?php echo $entry_height; ?>" id="input-height" class="form-control" />
                    </div>
                  </div>
                </div>
              </div>
              <div class="form-group"  style="display: none;">
                <label class="col-sm-2 control-label" for="input-length-class"><?php echo $entry_length_class; ?></label>
                <div class="col-sm-10">
                  <select name="length_class_id" id="input-length-class" class="form-control">
                    <?php foreach ($length_classes as $length_class) { ?>
                    <?php if ($length_class['length_class_id'] == $length_class_id) { ?>
                    <option value="<?php echo $length_class['length_class_id']; ?>" selected="selected"><?php echo $length_class['title']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $length_class['length_class_id']; ?>"><?php echo $length_class['title']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group"  style="display: none;">
                <label class="col-sm-2 control-label" for="input-weight"><?php echo $entry_weight; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="weight" value="<?php echo $weight; ?>" placeholder="<?php echo $entry_weight; ?>" id="input-weight" class="form-control" />
                </div>
              </div>
              <div class="form-group"  style="display: none;">
                <label class="col-sm-2 control-label" for="input-weight-class"><?php echo $entry_weight_class; ?></label>
                <div class="col-sm-10">
                  <select name="weight_class_id" id="input-weight-class" class="form-control">
                    <?php foreach ($weight_classes as $weight_class) { ?>
                    <?php if ($weight_class['weight_class_id'] == $weight_class_id) { ?>
                    <option value="<?php echo $weight_class['weight_class_id']; ?>" selected="selected"><?php echo $weight_class['title']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $weight_class['weight_class_id']; ?>"><?php echo $weight_class['title']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
             
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-sort-order"><?php echo $entry_sort_order; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="sort_order" value="<?php echo $sort_order; ?>" placeholder="<?php echo $entry_sort_order; ?>" id="input-sort-order" class="form-control" />
                </div>
              </div>
            </div>
            <div class="tab-pane" id="tab-links">

              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-main-category-id"><?php echo $entry_main_category; ?></label>
                <div class="col-sm-10">
                  <select name="main_category_id" id="input-main-category-id" class="form-control">
                    <?php foreach ($product_categories as $category) { ?>
	                <?php if ($category['category_id'] == $main_category_id) { ?>
	                <option value="<?php echo $category['category_id']; ?>" selected="selected"><?php echo $category['name']; ?></option>
	                <?php } else { ?>
	                <option value="<?php echo $category['category_id']; ?>"><?php echo $category['name']; ?></option>
                    <?php } ?>
                    <?php } ?>
	              </select>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-category"><span data-toggle="tooltip" title="<?php echo $help_category; ?>"><?php echo $entry_category; ?></span></label>
                <div class="col-sm-10">
                  <input type="text" name="category" value="" placeholder="<?php echo $entry_category; ?>" id="input-category" class="form-control" />
                  <div id="product-category" class="well well-sm" style="height: 150px; overflow: auto;">
                    <?php foreach ($product_categories as $product_category) { ?>
                    <div id="product-category<?php echo $product_category['category_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $product_category['name']; ?>
                      <input type="hidden" name="product_category[]" value="<?php echo $product_category['category_id']; ?>" />
                    </div>
                    <?php } ?>
                  </div>
                </div>
              </div>

              <div class="form-group" style="display: none;">
                <label class="col-sm-2 control-label"><?php echo $entry_store; ?></label>
                <div class="col-sm-10">
                  <div class="well well-sm" style="height: 150px; overflow: auto;">
                    <div class="checkbox">
                      <label>
                        <?php if (in_array(0, $product_store)) { ?>
                        <input type="checkbox" name="product_store[]" value="0" checked="checked" />
                        <?php echo $text_default; ?>
                        <?php } else { ?>
                        <input type="checkbox" name="product_store[]" value="0" />
                        <?php echo $text_default; ?>
                        <?php } ?>
                      </label>
                    </div>
                    <?php foreach ($stores as $store) { ?>
                    <div class="checkbox">
                      <label>
                        <?php if (in_array($store['store_id'], $product_store)) { ?>
                        <input type="checkbox" name="product_store[]" value="<?php echo $store['store_id']; ?>" checked="checked" />
                        <?php echo $store['name']; ?>
                        <?php } else { ?>
                        <input type="checkbox" name="product_store[]" value="<?php echo $store['store_id']; ?>" />
                        <?php echo $store['name']; ?>
                        <?php } ?>
                      </label>
                    </div>
                    <?php } ?>
                  </div>
                </div>
              </div>
              <div class="form-group" style="display: none;">
                <label class="col-sm-2 control-label" for="input-download"><span data-toggle="tooltip" title="<?php echo $help_download; ?>"><?php echo $entry_download; ?></span></label>
                <div class="col-sm-10">
                  <input type="text" name="download" value="" placeholder="<?php echo $entry_download; ?>" id="input-download" class="form-control" />
                  <div id="product-download" class="well well-sm" style="height: 150px; overflow: auto;">
                    <?php foreach ($product_downloads as $product_download) { ?>
                    <div id="product-download<?php echo $product_download['download_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $product_download['name']; ?>
                      <input type="hidden" name="product_download[]" value="<?php echo $product_download['download_id']; ?>" />
                    </div>
                    <?php } ?>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-related"><span data-toggle="tooltip" title="<?php echo $help_related; ?>"><?php echo $entry_related; ?></span></label>
                <div class="col-sm-10">
                  <input type="text" name="related" value="" placeholder="<?php echo $entry_related; ?>" id="input-related" class="form-control" />
                  <div id="product-related" class="well well-sm" style="height: 150px; overflow: auto;">
                    <?php foreach ($product_relateds as $product_related) { ?>
                    <div id="product-related<?php echo $product_related['product_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $product_related['name']; ?>
                      <input type="hidden" name="product_related[]" value="<?php echo $product_related['product_id']; ?>" />
                    </div>
                    <?php } ?>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-additional"><span data-toggle="tooltip" title="<?php echo $help_additional; ?>"><?php echo $entry_additional; ?></span></label>
                <div class="col-sm-10">
                  <input type="text" name="additional" value="" placeholder="<?php echo $entry_additional; ?>" id="input-additional" class="form-control" />
                  <div id="product-additional" class="well well-sm" style="height: 150px; overflow: auto;">
                    <?php foreach ($product_additionals as $product_additional) { ?>
                    <div id="product-additional<?php echo $product_additional['product_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $product_additional['name']; ?>
                      <input type="hidden" name="product_additional[]" value="<?php echo $product_additional['product_id']; ?>" />
                    </div>
                    <?php } ?>
                  </div>
                </div>
              </div>
            </div>
            <div class="tab-pane" id="tab-attribute">
              <div class="table-responsive">
                <table id="attribute" class="table table-striped table-bordered table-hover">
                  <thead>
                    <tr>
                      <td class="text-left"><?php echo $entry_attribute; ?></td>
                      <td class="text-left"><?php echo $entry_text; ?></td>
                      <td></td>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $attribute_row = 0; ?>
                    <?php foreach ($product_attributes as $product_attribute) { ?>
                    <tr id="attribute-row<?php echo $attribute_row; ?>">
                      <td class="text-left" style="width: 40%;"><input type="text" name="product_attribute[<?php echo $attribute_row; ?>][name]" value="<?php echo $product_attribute['name']; ?>" placeholder="<?php echo $entry_attribute; ?>" class="form-control" />
                        <input type="hidden" name="product_attribute[<?php echo $attribute_row; ?>][attribute_id]" value="<?php echo $product_attribute['attribute_id']; ?>" /></td>
                      <td class="text-left"><?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
                          <textarea name="product_attribute[<?php echo $attribute_row; ?>][product_attribute_description][<?php echo $language['language_id']; ?>][text]" rows="5" placeholder="<?php echo $entry_text; ?>" class="form-control"><?php echo isset($product_attribute['product_attribute_description'][$language['language_id']]) ? $product_attribute['product_attribute_description'][$language['language_id']]['text'] : ''; ?></textarea>
                        </div>
                        <?php } ?></td>
                      <td class="text-left"><button type="button" onclick="$('#attribute-row<?php echo $attribute_row; ?>').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
                    </tr>
                    <?php $attribute_row++; ?>
                    <?php } ?>
                  </tbody>
                  <tfoot>
                    <tr>
                      <td colspan="2"></td>
                      <td class="text-left"><button type="button" onclick="addAttribute();" data-toggle="tooltip" title="<?php echo $button_attribute_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
                    </tr>
                  </tfoot>
                </table>
              </div>
            </div>
            <div class="tab-pane" id="tab-option">
              <div class="row">
                <div class="col-sm-2">
                  <ul class="nav nav-pills nav-stacked" id="option">
                    <?php $option_row = 0; ?>
                    <?php 
                    
                    foreach ($product_options as $product_option) { ?>
                    <li><a href="#tab-option<?php echo $option_row; ?>" data-toggle="tab"><i class="fa fa-minus-circle" onclick="$('a[href=\'#tab-option<?php echo $option_row; ?>\']').parent().remove(); $('#tab-option<?php echo $option_row; ?>').remove(); $('#option a:first').tab('show');"></i> <?php echo $product_option['name']; ?></a></li>
                    <?php $option_row++; ?>
                    <?php } 
                    if(empty($product_description[$language['language_id']]['name'])){ 
                    $option_row = 5;?>
							<li class="active"><a href="#tab-option0" data-toggle="tab"><i class="fa fa-minus-circle" onclick="$('a[href=\'#tab-option0\']').parent().remove(); $('#tab-option0').remove(); $('#option a:first').tab('show');"></i> Размер полотна</a></li>
							<li><a href="#tab-option2" data-toggle="tab"><i class="fa fa-minus-circle" onclick="$('a[href=\'#tab-option2\']').parent().remove(); $('#tab-option2').remove(); $('#option a:first').tab('show');"></i> Коробка</a></li>
							<li><a href="#tab-option3" data-toggle="tab"><i class="fa fa-minus-circle" onclick="$('a[href=\'#tab-option3\']').parent().remove(); $('#tab-option3').remove(); $('#option a:first').tab('show');"></i> Наличник</a></li>
							<li><a href="#tab-option4" data-toggle="tab"><i class="fa fa-minus-circle" onclick="$('a[href=\'#tab-option4\']').parent().remove(); $('#tab-option4').remove(); $('#option a:first').tab('show');"></i> Доборная доска</a></li>
							<li>
                    </li>
                  
                    <?php }?>
                    <li>
                      <input type="text" name="option" value="" placeholder="<?php echo $entry_option; ?>" id="input-option" class="form-control" />
                    </li>
                  </ul>
                </div>
                <div class="col-sm-10">
                  <div class="tab-content">
                   
                   <?php if(empty($product_description[$language['language_id']]['name'])){?>

					<div class="tab-pane active" id="tab-option0">
					  <input name="product_option[0][product_option_id]" value="1044" type="hidden">
					  <input name="product_option[0][name]" value="Размер полотна" type="hidden">
					  <input name="product_option[0][option_id]" value="15" type="hidden">
					  <input name="product_option[0][type]" value="radio" type="hidden">
					  <div class="form-group">
						<label class="col-sm-2 control-label" for="input-required0">Обязательно</label>
						<div class="col-sm-10">
						  <select name="product_option[0][required]" id="input-required0" class="form-control">
							<option value="1" selected="selected">Да</option>
							<option value="0">Нет</option>
						  </select>
						</div>
					  </div>
					  <div class="table-responsive">
						<table id="option-value0" class="table table-striped table-bordered table-hover">
						  <thead>
							<tr>
							  <td class="text-left">Значение опции</td>
							  <td class="text-right">Количество</td>
							  <td class="text-left">Вычитать со склада</td>
							  <td class="text-right">Стоимость</td>
							  <td class="text-right">Баллы опций</td>
							  <td class="text-right">Вес</td>
							  <td class="right">Артикул:</td>
							  <!-- *suppler* -->
							  <td></td>
							</tr>
						  </thead>
						  <tbody>
							<tr id="option-value-row0">
							  <td class="text-left"><select name="product_option[0][product_option_value][0][option_value_id]" class="form-control">
								  <option value="61" selected="selected">40 x 200 см</option>
								  <option value="57">60 x 200 см</option>
								  <option value="58">70 x 200 см</option>
								  <option value="59">80 x 200 см</option>
								  <option value="60">90 x 200 см</option>
								</select>
								<input name="product_option[0][product_option_value][0][product_option_value_id]" value="4094" type="hidden"></td>
							  <td class="text-right"><input name="product_option[0][product_option_value][0][quantity]" value="0" placeholder="Количество" class="form-control" type="text"></td>
							  <td class="text-left"><select name="product_option[0][product_option_value][0][subtract]" class="form-control">
								  <option value="1">Да</option>
								  <option value="0" selected="selected">Нет</option>
								</select></td>
							  <td class="text-right"><select name="product_option[0][product_option_value][0][price_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[0][product_option_value][0][price]" value="0.0000" placeholder="Стоимость" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[0][product_option_value][0][points_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[0][product_option_value][0][points]" value="0" placeholder="Баллы" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[0][product_option_value][0][weight_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[0][product_option_value][0][weight]" value="0.00000000" placeholder="Вес" class="form-control" type="text"></td>
							  <td><input name="product_option[0][product_option_value][0][optsku]" value="" size="12" type="text"></td>
							  <!-- *suppler* -->
							  <td class="text-left"><button type="button" onclick="$(this).tooltip('destroy');$('#option-value-row0').remove();" data-toggle="tooltip" title="" class="btn btn-danger" data-original-title="Удалить"><i class="fa fa-minus-circle"></i></button></td>
							</tr>
							<tr id="option-value-row1">
							  <td class="text-left"><select name="product_option[0][product_option_value][1][option_value_id]" class="form-control">
								  <option value="61">40 x 200 см</option>
								  <option value="57">60 x 200 см</option>
								  <option value="58">70 x 200 см</option>
								  <option value="59">80 x 200 см</option>
								  <option value="60" selected="selected">90 x 200 см</option>
								</select>
								<input name="product_option[0][product_option_value][1][product_option_value_id]" value="4093" type="hidden"></td>
							  <td class="text-right"><input name="product_option[0][product_option_value][1][quantity]" value="0" placeholder="Количество" class="form-control" type="text"></td>
							  <td class="text-left"><select name="product_option[0][product_option_value][1][subtract]" class="form-control">
								  <option value="1">Да</option>
								  <option value="0" selected="selected">Нет</option>
								</select></td>
							  <td class="text-right"><select name="product_option[0][product_option_value][1][price_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[0][product_option_value][1][price]" value="0.0000" placeholder="Стоимость" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[0][product_option_value][1][points_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[0][product_option_value][1][points]" value="0" placeholder="Баллы" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[0][product_option_value][1][weight_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[0][product_option_value][1][weight]" value="0.00000000" placeholder="Вес" class="form-control" type="text"></td>
							  <td><input name="product_option[0][product_option_value][1][optsku]" value="" size="12" type="text"></td>
							  <!-- *suppler* -->
							  <td class="text-left"><button type="button" onclick="$(this).tooltip('destroy');$('#option-value-row1').remove();" data-toggle="tooltip" title="" class="btn btn-danger" data-original-title="Удалить"><i class="fa fa-minus-circle"></i></button></td>
							</tr>
							<tr id="option-value-row2">
							  <td class="text-left"><select name="product_option[0][product_option_value][2][option_value_id]" class="form-control">
								  <option value="61">40 x 200 см</option>
								  <option value="57">60 x 200 см</option>
								  <option value="58">70 x 200 см</option>
								  <option value="59" selected="selected">80 x 200 см</option>
								  <option value="60">90 x 200 см</option>
								</select>
								<input name="product_option[0][product_option_value][2][product_option_value_id]" value="4092" type="hidden"></td>
							  <td class="text-right"><input name="product_option[0][product_option_value][2][quantity]" value="0" placeholder="Количество" class="form-control" type="text"></td>
							  <td class="text-left"><select name="product_option[0][product_option_value][2][subtract]" class="form-control">
								  <option value="1">Да</option>
								  <option value="0" selected="selected">Нет</option>
								</select></td>
							  <td class="text-right"><select name="product_option[0][product_option_value][2][price_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[0][product_option_value][2][price]" value="0.0000" placeholder="Стоимость" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[0][product_option_value][2][points_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[0][product_option_value][2][points]" value="0" placeholder="Баллы" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[0][product_option_value][2][weight_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[0][product_option_value][2][weight]" value="0.00000000" placeholder="Вес" class="form-control" type="text"></td>
							  <td><input name="product_option[0][product_option_value][2][optsku]" value="" size="12" type="text"></td>
							  <!-- *suppler* -->
							  <td class="text-left"><button type="button" onclick="$(this).tooltip('destroy');$('#option-value-row2').remove();" data-toggle="tooltip" title="" class="btn btn-danger" data-original-title="Удалить"><i class="fa fa-minus-circle"></i></button></td>
							</tr>
							<tr id="option-value-row3">
							  <td class="text-left"><select name="product_option[0][product_option_value][3][option_value_id]" class="form-control">
								  <option value="61">40 x 200 см</option>
								  <option value="57">60 x 200 см</option>
								  <option value="58" selected="selected">70 x 200 см</option>
								  <option value="59">80 x 200 см</option>
								  <option value="60">90 x 200 см</option>
								</select>
								<input name="product_option[0][product_option_value][3][product_option_value_id]" value="4091" type="hidden"></td>
							  <td class="text-right"><input name="product_option[0][product_option_value][3][quantity]" value="0" placeholder="Количество" class="form-control" type="text"></td>
							  <td class="text-left"><select name="product_option[0][product_option_value][3][subtract]" class="form-control">
								  <option value="1">Да</option>
								  <option value="0" selected="selected">Нет</option>
								</select></td>
							  <td class="text-right"><select name="product_option[0][product_option_value][3][price_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[0][product_option_value][3][price]" value="0.0000" placeholder="Стоимость" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[0][product_option_value][3][points_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[0][product_option_value][3][points]" value="0" placeholder="Баллы" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[0][product_option_value][3][weight_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[0][product_option_value][3][weight]" value="0.00000000" placeholder="Вес" class="form-control" type="text"></td>
							  <td><input name="product_option[0][product_option_value][3][optsku]" value="" size="12" type="text"></td>
							  <!-- *suppler* -->
							  <td class="text-left"><button type="button" onclick="$(this).tooltip('destroy');$('#option-value-row3').remove();" data-toggle="tooltip" title="" class="btn btn-danger" data-original-title="Удалить"><i class="fa fa-minus-circle"></i></button></td>
							</tr>
							<tr id="option-value-row4">
							  <td class="text-left"><select name="product_option[0][product_option_value][4][option_value_id]" class="form-control">
								  <option value="61">40 x 200 см</option>
								  <option value="57" selected="selected">60 x 200 см</option>
								  <option value="58">70 x 200 см</option>
								  <option value="59">80 x 200 см</option>
								  <option value="60">90 x 200 см</option>
								</select>
								<input name="product_option[0][product_option_value][4][product_option_value_id]" value="4090" type="hidden"></td>
							  <td class="text-right"><input name="product_option[0][product_option_value][4][quantity]" value="0" placeholder="Количество" class="form-control" type="text"></td>
							  <td class="text-left"><select name="product_option[0][product_option_value][4][subtract]" class="form-control">
								  <option value="1">Да</option>
								  <option value="0" selected="selected">Нет</option>
								</select></td>
							  <td class="text-right"><select name="product_option[0][product_option_value][4][price_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[0][product_option_value][4][price]" value="0.0000" placeholder="Стоимость" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[0][product_option_value][4][points_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[0][product_option_value][4][points]" value="0" placeholder="Баллы" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[0][product_option_value][4][weight_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[0][product_option_value][4][weight]" value="0.00000000" placeholder="Вес" class="form-control" type="text"></td>
							  <td><input name="product_option[0][product_option_value][4][optsku]" value="" size="12" type="text"></td>
							  <!-- *suppler* -->
							  <td class="text-left"><button type="button" onclick="$(this).tooltip('destroy');$('#option-value-row4').remove();" data-toggle="tooltip" title="" class="btn btn-danger" data-original-title="Удалить"><i class="fa fa-minus-circle"></i></button></td>
							</tr>
						  </tbody>
						  <tfoot>
							<tr>
							  <td colspan="7"></td>
							  <!-- *suppler* -->
							  <td class="text-left"><button type="button" onclick="addOptionValue('0');" data-toggle="tooltip" title="" class="btn btn-primary" data-original-title="Добавить значение опции"><i class="fa fa-plus-circle"></i></button></td>
							</tr>
						  </tfoot>
						</table>
					  </div>
					  <select id="option-values0" style="display: none;">
						<option value="61">40 x 200 см</option>
						<option value="57">60 x 200 см</option>
						<option value="58">70 x 200 см</option>
						<option value="59">80 x 200 см</option>
						<option value="60">90 x 200 см</option>
					  </select>
					</div>
					<div class="tab-pane" id="tab-option1">
					  <input name="product_option[1][product_option_id]" value="229" type="hidden">
					  <input name="product_option[1][name]" value="Установка" type="hidden">
					  <input name="product_option[1][option_id]" value="14" type="hidden">
					  <input name="product_option[1][type]" value="checkbox" type="hidden">
					  <div class="form-group">
						<label class="col-sm-2 control-label" for="input-required1">Обязательно</label>
						<div class="col-sm-10">
						  <select name="product_option[1][required]" id="input-required1" class="form-control">
							<option value="1" selected="selected">Да</option>
							<option value="0">Нет</option>
						  </select>
						</div>
					  </div>
					  <div class="table-responsive">
						<table id="option-value1" class="table table-striped table-bordered table-hover">
						  <thead>
							<tr>
							  <td class="text-left">Значение опции</td>
							  <td class="text-right">Количество</td>
							  <td class="text-left">Вычитать со склада</td>
							  <td class="text-right">Стоимость</td>
							  <td class="text-right">Баллы опций</td>
							  <td class="text-right">Вес</td>
							  <td class="right">Артикул:</td>
							  <!-- *suppler* -->
							  <td></td>
							</tr>
						  </thead>
						  <tfoot>
							<tr>
							  <td colspan="7"></td>
							  <!-- *suppler* -->
							  <td class="text-left"><button type="button" onclick="addOptionValue('1');" data-toggle="tooltip" title="" class="btn btn-primary" data-original-title="Добавить значение опции"><i class="fa fa-plus-circle"></i></button></td>
							</tr>
						  </tfoot>
						</table>
					  </div>
					  <select id="option-values1" style="display: none;">
						<option value="55">Установка</option>
						<option value="56">Установка 2</option>
					  </select>
					</div>
					<div class="tab-pane" id="tab-option2">
					  <input name="product_option[2][product_option_id]" value="2166" type="hidden">
					  <input name="product_option[2][name]" value="Коробка" type="hidden">
					  <input name="product_option[2][option_id]" value="16" type="hidden">
					  <input name="product_option[2][type]" value="radio" type="hidden">
					  <div class="form-group">
						<label class="col-sm-2 control-label" for="input-required2">Обязательно</label>
						<div class="col-sm-10">
						  <select name="product_option[2][required]" id="input-required2" class="form-control">
							<option value="1">Да</option>
							<option value="0" selected="selected">Нет</option>
						  </select>
						</div>
					  </div>
					  <div class="table-responsive">
						<table id="option-value2" class="table table-striped table-bordered table-hover">
						  <thead>
							<tr>
							  <td class="text-left">Значение опции</td>
							  <td class="text-right">Количество</td>
							  <td class="text-left">Вычитать со склада</td>
							  <td class="text-right">Стоимость</td>
							  <td class="text-right">Баллы опций</td>
							  <td class="text-right">Вес</td>
							  <td class="right">Артикул:</td>
							  <!-- *suppler* -->
							  <td></td>
							</tr>
						  </thead>
						  <tbody>
							<tr id="option-value-row7">
							  <td class="text-left"><select name="product_option[2][product_option_value][7][option_value_id]" class="form-control">
								  <option value="62" selected="selected">Без порога</option>
								  <option value="63">С порогом</option>
								  <option value="64">Без коробки</option>
								</select>
								<input name="product_option[2][product_option_value][7][product_option_value_id]" value="8059" type="hidden"></td>
							  <td class="text-right"><input name="product_option[2][product_option_value][7][quantity]" value="0" placeholder="Количество" class="form-control" type="text"></td>
							  <td class="text-left"><select name="product_option[2][product_option_value][7][subtract]" class="form-control">
								  <option value="1">Да</option>
								  <option value="0" selected="selected">Нет</option>
								</select></td>
							  <td class="text-right"><select name="product_option[2][product_option_value][7][price_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[2][product_option_value][7][price]" value="0.0000" placeholder="Стоимость" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[2][product_option_value][7][points_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[2][product_option_value][7][points]" value="0" placeholder="Баллы" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[2][product_option_value][7][weight_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[2][product_option_value][7][weight]" value="0.00000000" placeholder="Вес" class="form-control" type="text"></td>
							  <td><input name="product_option[2][product_option_value][7][optsku]" value="" size="12" type="text"></td>
							  <!-- *suppler* -->
							  <td class="text-left"><button type="button" onclick="$(this).tooltip('destroy');$('#option-value-row7').remove();" data-toggle="tooltip" title="" class="btn btn-danger" data-original-title="Удалить"><i class="fa fa-minus-circle"></i></button></td>
							</tr>
							<tr id="option-value-row8">
							  <td class="text-left"><select name="product_option[2][product_option_value][8][option_value_id]" class="form-control">
								  <option value="62">Без порога</option>
								  <option value="63" selected="selected">С порогом</option>
								  <option value="64">Без коробки</option>
								</select>
								<input name="product_option[2][product_option_value][8][product_option_value_id]" value="8060" type="hidden"></td>
							  <td class="text-right"><input name="product_option[2][product_option_value][8][quantity]" value="0" placeholder="Количество" class="form-control" type="text"></td>
							  <td class="text-left"><select name="product_option[2][product_option_value][8][subtract]" class="form-control">
								  <option value="1">Да</option>
								  <option value="0" selected="selected">Нет</option>
								</select></td>
							  <td class="text-right"><select name="product_option[2][product_option_value][8][price_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[2][product_option_value][8][price]" value="0.0000" placeholder="Стоимость" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[2][product_option_value][8][points_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[2][product_option_value][8][points]" value="0" placeholder="Баллы" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[2][product_option_value][8][weight_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[2][product_option_value][8][weight]" value="0.00000000" placeholder="Вес" class="form-control" type="text"></td>
							  <td><input name="product_option[2][product_option_value][8][optsku]" value="" size="12" type="text"></td>
							  <!-- *suppler* -->
							  <td class="text-left"><button type="button" onclick="$(this).tooltip('destroy');$('#option-value-row8').remove();" data-toggle="tooltip" title="" class="btn btn-danger" data-original-title="Удалить"><i class="fa fa-minus-circle"></i></button></td>
							</tr>
							<tr id="option-value-row9">
							  <td class="text-left"><select name="product_option[2][product_option_value][9][option_value_id]" class="form-control">
								  <option value="62">Без порога</option>
								  <option value="63">С порогом</option>
								  <option value="64" selected="selected">Без коробки</option>
								</select>
								<input name="product_option[2][product_option_value][9][product_option_value_id]" value="8061" type="hidden"></td>
							  <td class="text-right"><input name="product_option[2][product_option_value][9][quantity]" value="0" placeholder="Количество" class="form-control" type="text"></td>
							  <td class="text-left"><select name="product_option[2][product_option_value][9][subtract]" class="form-control">
								  <option value="1">Да</option>
								  <option value="0" selected="selected">Нет</option>
								</select></td>
							  <td class="text-right"><select name="product_option[2][product_option_value][9][price_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[2][product_option_value][9][price]" value="0.0000" placeholder="Стоимость" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[2][product_option_value][9][points_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[2][product_option_value][9][points]" value="0" placeholder="Баллы" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[2][product_option_value][9][weight_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[2][product_option_value][9][weight]" value="0.00000000" placeholder="Вес" class="form-control" type="text"></td>
							  <td><input name="product_option[2][product_option_value][9][optsku]" value="" size="12" type="text"></td>
							  <!-- *suppler* -->
							  <td class="text-left"><button type="button" onclick="$(this).tooltip('destroy');$('#option-value-row9').remove();" data-toggle="tooltip" title="" class="btn btn-danger" data-original-title="Удалить"><i class="fa fa-minus-circle"></i></button></td>
							</tr>
						  </tbody>
						  <tfoot>
							<tr>
							  <td colspan="7"></td>
							  <!-- *suppler* -->
							  <td class="text-left"><button type="button" onclick="addOptionValue('2');" data-toggle="tooltip" title="" class="btn btn-primary" data-original-title="Добавить значение опции"><i class="fa fa-plus-circle"></i></button></td>
							</tr>
						  </tfoot>
						</table>
					  </div>
					  <select id="option-values2" style="display: none;">
						<option value="62">Без порога</option>
						<option value="63">С порогом</option>
						<option value="64">Без коробки</option>
					  </select>
					</div>
					<div class="tab-pane" id="tab-option3">
					  <input name="product_option[3][product_option_id]" value="3280" type="hidden">
					  <input name="product_option[3][name]" value="Наличник" type="hidden">
					  <input name="product_option[3][option_id]" value="17" type="hidden">
					  <input name="product_option[3][type]" value="radio" type="hidden">
					  <div class="form-group">
						<label class="col-sm-2 control-label" for="input-required3">Обязательно</label>
						<div class="col-sm-10">
						  <select name="product_option[3][required]" id="input-required3" class="form-control">
							<option value="1">Да</option>
							<option value="0" selected="selected">Нет</option>
						  </select>
						</div>
					  </div>
					  <div class="table-responsive">
						<table id="option-value3" class="table table-striped table-bordered table-hover">
						  <thead>
							<tr>
							  <td class="text-left">Значение опции</td>
							  <td class="text-right">Количество</td>
							  <td class="text-left">Вычитать со склада</td>
							  <td class="text-right">Стоимость</td>
							  <td class="text-right">Баллы опций</td>
							  <td class="text-right">Вес</td>
							  <td class="right">Артикул:</td>
							  <!-- *suppler* -->
							  <td></td>
							</tr>
						  </thead>
						  <tbody>
							<tr id="option-value-row10">
							  <td class="text-left"><select name="product_option[3][product_option_value][10][option_value_id]" class="form-control">
								  <option value="67">Без наличника</option>
								  <option value="66">На две стороны</option>
								  <option value="65" selected="selected">На одну сторону</option>
								</select>
								<input name="product_option[3][product_option_value][10][product_option_value_id]" value="11401" type="hidden"></td>
							  <td class="text-right"><input name="product_option[3][product_option_value][10][quantity]" value="0" placeholder="Количество" class="form-control" type="text"></td>
							  <td class="text-left"><select name="product_option[3][product_option_value][10][subtract]" class="form-control">
								  <option value="1">Да</option>
								  <option value="0" selected="selected">Нет</option>
								</select></td>
							  <td class="text-right"><select name="product_option[3][product_option_value][10][price_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[3][product_option_value][10][price]" value="0.0000" placeholder="Стоимость" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[3][product_option_value][10][points_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[3][product_option_value][10][points]" value="0" placeholder="Баллы" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[3][product_option_value][10][weight_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[3][product_option_value][10][weight]" value="0.00000000" placeholder="Вес" class="form-control" type="text"></td>
							  <td><input name="product_option[3][product_option_value][10][optsku]" value="" size="12" type="text"></td>
							  <!-- *suppler* -->
							  <td class="text-left"><button type="button" onclick="$(this).tooltip('destroy');$('#option-value-row10').remove();" data-toggle="tooltip" title="" class="btn btn-danger" data-original-title="Удалить"><i class="fa fa-minus-circle"></i></button></td>
							</tr>
							<tr id="option-value-row11">
							  <td class="text-left"><select name="product_option[3][product_option_value][11][option_value_id]" class="form-control">
								  <option value="67">Без наличника</option>
								  <option value="66" selected="selected">На две стороны</option>
								  <option value="65">На одну сторону</option>
								</select>
								<input name="product_option[3][product_option_value][11][product_option_value_id]" value="11402" type="hidden"></td>
							  <td class="text-right"><input name="product_option[3][product_option_value][11][quantity]" value="0" placeholder="Количество" class="form-control" type="text"></td>
							  <td class="text-left"><select name="product_option[3][product_option_value][11][subtract]" class="form-control">
								  <option value="1">Да</option>
								  <option value="0" selected="selected">Нет</option>
								</select></td>
							  <td class="text-right"><select name="product_option[3][product_option_value][11][price_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[3][product_option_value][11][price]" value="0.0000" placeholder="Стоимость" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[3][product_option_value][11][points_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[3][product_option_value][11][points]" value="0" placeholder="Баллы" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[3][product_option_value][11][weight_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[3][product_option_value][11][weight]" value="0.00000000" placeholder="Вес" class="form-control" type="text"></td>
							  <td><input name="product_option[3][product_option_value][11][optsku]" value="" size="12" type="text"></td>
							  <!-- *suppler* -->
							  <td class="text-left"><button type="button" onclick="$(this).tooltip('destroy');$('#option-value-row11').remove();" data-toggle="tooltip" title="" class="btn btn-danger" data-original-title="Удалить"><i class="fa fa-minus-circle"></i></button></td>
							</tr>
							<tr id="option-value-row12">
							  <td class="text-left"><select name="product_option[3][product_option_value][12][option_value_id]" class="form-control">
								  <option value="67" selected="selected">Без наличника</option>
								  <option value="66">На две стороны</option>
								  <option value="65">На одну сторону</option>
								</select>
								<input name="product_option[3][product_option_value][12][product_option_value_id]" value="11403" type="hidden"></td>
							  <td class="text-right"><input name="product_option[3][product_option_value][12][quantity]" value="0" placeholder="Количество" class="form-control" type="text"></td>
							  <td class="text-left"><select name="product_option[3][product_option_value][12][subtract]" class="form-control">
								  <option value="1">Да</option>
								  <option value="0" selected="selected">Нет</option>
								</select></td>
							  <td class="text-right"><select name="product_option[3][product_option_value][12][price_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[3][product_option_value][12][price]" value="0.0000" placeholder="Стоимость" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[3][product_option_value][12][points_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[3][product_option_value][12][points]" value="0" placeholder="Баллы" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[3][product_option_value][12][weight_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[3][product_option_value][12][weight]" value="0.00000000" placeholder="Вес" class="form-control" type="text"></td>
							  <td><input name="product_option[3][product_option_value][12][optsku]" value="" size="12" type="text"></td>
							  <!-- *suppler* -->
							  <td class="text-left"><button type="button" onclick="$(this).tooltip('destroy');$('#option-value-row12').remove();" data-toggle="tooltip" title="" class="btn btn-danger" data-original-title="Удалить"><i class="fa fa-minus-circle"></i></button></td>
							</tr>
						  </tbody>
						  <tfoot>
							<tr>
							  <td colspan="7"></td>
							  <!-- *suppler* -->
							  <td class="text-left"><button type="button" onclick="addOptionValue('3');" data-toggle="tooltip" title="" class="btn btn-primary" data-original-title="Добавить значение опции"><i class="fa fa-plus-circle"></i></button></td>
							</tr>
						  </tfoot>
						</table>
					  </div>
					  <select id="option-values3" style="display: none;">
						<option value="67">Без наличника</option>
						<option value="66">На две стороны</option>
						<option value="65">На одну сторону</option>
					  </select>
					</div>
					<div class="tab-pane" id="tab-option4">
					  <input name="product_option[4][product_option_id]" value="4394" type="hidden">
					  <input name="product_option[4][name]" value="Доборная доска" type="hidden">
					  <input name="product_option[4][option_id]" value="18" type="hidden">
					  <input name="product_option[4][type]" value="radio" type="hidden">
					  <div class="form-group">
						<label class="col-sm-2 control-label" for="input-required4">Обязательно</label>
						<div class="col-sm-10">
						  <select name="product_option[4][required]" id="input-required4" class="form-control">
							<option value="1">Да</option>
							<option value="0" selected="selected">Нет</option>
						  </select>
						</div>
					  </div>
					  <div class="table-responsive">
						<table id="option-value4" class="table table-striped table-bordered table-hover">
						  <thead>
							<tr>
							  <td class="text-left">Значение опции</td>
							  <td class="text-right">Количество</td>
							  <td class="text-left">Вычитать со склада</td>
							  <td class="text-right">Стоимость</td>
							  <td class="text-right">Баллы опций</td>
							  <td class="text-right">Вес</td>
							  <td class="right">Артикул:</td>
							  <!-- *suppler* -->
							  <td></td>
							</tr>
						  </thead>
						  <tbody>
							<tr id="option-value-row13">
							  <td class="text-left"><select name="product_option[4][product_option_value][13][option_value_id]" class="form-control">
								  <option value="70">Без доборной доски</option>
								  <option value="68" selected="selected">Доборная доска 18 см.</option>
								  <option value="69">Доборная доска 9 см.</option>
								</select>
								<input name="product_option[4][product_option_value][13][product_option_value_id]" value="14743" type="hidden"></td>
							  <td class="text-right"><input name="product_option[4][product_option_value][13][quantity]" value="0" placeholder="Количество" class="form-control" type="text"></td>
							  <td class="text-left"><select name="product_option[4][product_option_value][13][subtract]" class="form-control">
								  <option value="1">Да</option>
								  <option value="0" selected="selected">Нет</option>
								</select></td>
							  <td class="text-right"><select name="product_option[4][product_option_value][13][price_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[4][product_option_value][13][price]" value="0.0000" placeholder="Стоимость" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[4][product_option_value][13][points_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[4][product_option_value][13][points]" value="0" placeholder="Баллы" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[4][product_option_value][13][weight_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[4][product_option_value][13][weight]" value="0.00000000" placeholder="Вес" class="form-control" type="text"></td>
							  <td><input name="product_option[4][product_option_value][13][optsku]" value="" size="12" type="text"></td>
							  <!-- *suppler* -->
							  <td class="text-left"><button type="button" onclick="$(this).tooltip('destroy');$('#option-value-row13').remove();" data-toggle="tooltip" title="" class="btn btn-danger" data-original-title="Удалить"><i class="fa fa-minus-circle"></i></button></td>
							</tr>
							<tr id="option-value-row14">
							  <td class="text-left"><select name="product_option[4][product_option_value][14][option_value_id]" class="form-control">
								  <option value="70">Без доборной доски</option>
								  <option value="68">Доборная доска 18 см.</option>
								  <option value="69" selected="selected">Доборная доска 9 см.</option>
								</select>
								<input name="product_option[4][product_option_value][14][product_option_value_id]" value="14744" type="hidden"></td>
							  <td class="text-right"><input name="product_option[4][product_option_value][14][quantity]" value="0" placeholder="Количество" class="form-control" type="text"></td>
							  <td class="text-left"><select name="product_option[4][product_option_value][14][subtract]" class="form-control">
								  <option value="1">Да</option>
								  <option value="0" selected="selected">Нет</option>
								</select></td>
							  <td class="text-right"><select name="product_option[4][product_option_value][14][price_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[4][product_option_value][14][price]" value="0.0000" placeholder="Стоимость" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[4][product_option_value][14][points_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[4][product_option_value][14][points]" value="0" placeholder="Баллы" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[4][product_option_value][14][weight_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[4][product_option_value][14][weight]" value="0.00000000" placeholder="Вес" class="form-control" type="text"></td>
							  <td><input name="product_option[4][product_option_value][14][optsku]" value="" size="12" type="text"></td>
							  <!-- *suppler* -->
							  <td class="text-left"><button type="button" onclick="$(this).tooltip('destroy');$('#option-value-row14').remove();" data-toggle="tooltip" title="" class="btn btn-danger" data-original-title="Удалить"><i class="fa fa-minus-circle"></i></button></td>
							</tr>
							<tr id="option-value-row15">
							  <td class="text-left"><select name="product_option[4][product_option_value][15][option_value_id]" class="form-control">
								  <option value="70" selected="selected">Без доборной доски</option>
								  <option value="68">Доборная доска 18 см.</option>
								  <option value="69">Доборная доска 9 см.</option>
								</select>
								<input name="product_option[4][product_option_value][15][product_option_value_id]" value="14745" type="hidden"></td>
							  <td class="text-right"><input name="product_option[4][product_option_value][15][quantity]" value="0" placeholder="Количество" class="form-control" type="text"></td>
							  <td class="text-left"><select name="product_option[4][product_option_value][15][subtract]" class="form-control">
								  <option value="1">Да</option>
								  <option value="0" selected="selected">Нет</option>
								</select></td>
							  <td class="text-right"><select name="product_option[4][product_option_value][15][price_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[4][product_option_value][15][price]" value="0.0000" placeholder="Стоимость" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[4][product_option_value][15][points_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[4][product_option_value][15][points]" value="0" placeholder="Баллы" class="form-control" type="text"></td>
							  <td class="text-right"><select name="product_option[4][product_option_value][15][weight_prefix]" class="form-control">
								  <option value="+" selected="selected">+</option>
								  <option value="-">-</option>
								</select>
								<input name="product_option[4][product_option_value][15][weight]" value="0.00000000" placeholder="Вес" class="form-control" type="text"></td>
							  <td><input name="product_option[4][product_option_value][15][optsku]" value="" size="12" type="text"></td>
							  <!-- *suppler* -->
							  <td class="text-left"><button type="button" onclick="$(this).tooltip('destroy');$('#option-value-row15').remove();" data-toggle="tooltip" title="" class="btn btn-danger" data-original-title="Удалить"><i class="fa fa-minus-circle"></i></button></td>
							</tr>
						  </tbody>
						  <tfoot>
							<tr>
							  <td colspan="7"></td>
							  <!-- *suppler* -->
							  <td class="text-left"><button type="button" onclick="addOptionValue('4');" data-toggle="tooltip" title="" class="btn btn-primary" data-original-title="Добавить значение опции"><i class="fa fa-plus-circle"></i></button></td>
							</tr>
						  </tfoot>
						</table>
					  </div>
					  <select id="option-values4" style="display: none;">
						<option value="70">Без доборной доски</option>
						<option value="68">Доборная доска 18 см.</option>
						<option value="69">Доборная доска 9 см.</option>
					  </select>
					</div>

                   
                   
                  <? }  ?>
                    <?php $option_row = 0; 
                     if(empty($product_description[$language['language_id']]['name'])){ 
                    $option_row = 5;
                    }?>
                    
                    
                    
                    <?php $option_value_row = 0; ?>
                    <?php foreach ($product_options as $product_option) { ?>
                    <div class="tab-pane" id="tab-option<?php echo $option_row; ?>">
                      <input type="hidden" name="product_option[<?php echo $option_row; ?>][product_option_id]" value="<?php echo $product_option['product_option_id']; ?>" />
                      <input type="hidden" name="product_option[<?php echo $option_row; ?>][name]" value="<?php echo $product_option['name']; ?>" />
                      <input type="hidden" name="product_option[<?php echo $option_row; ?>][option_id]" value="<?php echo $product_option['option_id']; ?>" />
                      <input type="hidden" name="product_option[<?php echo $option_row; ?>][type]" value="<?php echo $product_option['type']; ?>" />
                      <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-required<?php echo $option_row; ?>"><?php echo $entry_required; ?></label>
                        <div class="col-sm-10">
                          <select name="product_option[<?php echo $option_row; ?>][required]" id="input-required<?php echo $option_row; ?>" class="form-control">
                            <?php if ($product_option['required']) { ?>
                            <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                            <option value="0"><?php echo $text_no; ?></option>
                            <?php } else { ?>
                            <option value="1"><?php echo $text_yes; ?></option>
                            <option value="0" selected="selected"><?php echo $text_no; ?></option>
                            <?php } ?>
                          </select>
                        </div>
                      </div>
                      <?php if ($product_option['type'] == 'text') { ?>
                      <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-value<?php echo $option_row; ?>"><?php echo $entry_option_value; ?></label>
                        <div class="col-sm-10">
                          <input type="text" name="product_option[<?php echo $option_row; ?>][value]" value="<?php echo $product_option['value']; ?>" placeholder="<?php echo $entry_option_value; ?>" id="input-value<?php echo $option_row; ?>" class="form-control" />
                        </div>
                      </div>
                      <?php } ?>
                      <?php if ($product_option['type'] == 'textarea') { ?>
                      <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-value<?php echo $option_row; ?>"><?php echo $entry_option_value; ?></label>
                        <div class="col-sm-10">
                          <textarea name="product_option[<?php echo $option_row; ?>][value]" rows="5" placeholder="<?php echo $entry_option_value; ?>" id="input-value<?php echo $option_row; ?>" class="form-control"><?php echo $product_option['value']; ?></textarea>
                        </div>
                      </div>
                      <?php } ?>
                      <?php if ($product_option['type'] == 'file') { ?>
                      <div class="form-group" style="display: none;">
                        <label class="col-sm-2 control-label" for="input-value<?php echo $option_row; ?>"><?php echo $entry_option_value; ?></label>
                        <div class="col-sm-10">
                          <input type="text" name="product_option[<?php echo $option_row; ?>][value]" value="<?php echo $product_option['value']; ?>" placeholder="<?php echo $entry_option_value; ?>" id="input-value<?php echo $option_row; ?>" class="form-control" />
                        </div>
                      </div>
                      <?php } ?>
                      <?php if ($product_option['type'] == 'date') { ?>
                      <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-value<?php echo $option_row; ?>"><?php echo $entry_option_value; ?></label>
                        <div class="col-sm-3">
                          <div class="input-group date">
                            <input type="text" name="product_option[<?php echo $option_row; ?>][value]" value="<?php echo $product_option['value']; ?>" placeholder="<?php echo $entry_option_value; ?>" data-date-format="YYYY-MM-DD" id="input-value<?php echo $option_row; ?>" class="form-control" />
                            <span class="input-group-btn">
                            <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                            </span></div>
                        </div>
                      </div>
                      <?php } ?>
                      <?php if ($product_option['type'] == 'time') { ?>
                      <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-value<?php echo $option_row; ?>"><?php echo $entry_option_value; ?></label>
                        <div class="col-sm-10">
                          <div class="input-group time">
                            <input type="text" name="product_option[<?php echo $option_row; ?>][value]" value="<?php echo $product_option['value']; ?>" placeholder="<?php echo $entry_option_value; ?>" data-date-format="HH:mm" id="input-value<?php echo $option_row; ?>" class="form-control" />
                            <span class="input-group-btn">
                            <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                            </span></div>
                        </div>
                      </div>
                      <?php } ?>
                      <?php if ($product_option['type'] == 'datetime') { ?>
                      <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-value<?php echo $option_row; ?>"><?php echo $entry_option_value; ?></label>
                        <div class="col-sm-10">
                          <div class="input-group datetime">
                            <input type="text" name="product_option[<?php echo $option_row; ?>][value]" value="<?php echo $product_option['value']; ?>" placeholder="<?php echo $entry_option_value; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-value<?php echo $option_row; ?>" class="form-control" />
                            <span class="input-group-btn">
                            <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                            </span></div>
                        </div>
                      </div>
                      <?php } ?>
                      <?php if ($product_option['type'] == 'select' || $product_option['type'] == 'radio' || $product_option['type'] == 'checkbox' || $product_option['type'] == 'image') { ?>
                      <div class="table-responsive">
                        <table id="option-value<?php echo $option_row; ?>" class="table table-striped table-bordered table-hover">
                          <thead>
                            <tr>
                              <td class="text-left"><?php echo $entry_option_value; ?></td>
                              <td class="text-right"><?php echo $entry_quantity; ?></td>
                              <td class="text-left"><?php echo $entry_subtract; ?></td>
                              <td class="text-right"><?php echo $entry_price; ?></td>
                              <td class="text-right"><?php echo $entry_option_points; ?></td>
                              <td class="text-right"><?php echo $entry_weight; ?></td> 
				<td class="right"><?php echo $entry_optsku; ?></td> <!-- *suppler* -->
                              <td></td>
                            </tr>
                          </thead>
                          <tbody>
                            <?php foreach ($product_option['product_option_value'] as $product_option_value) { ?>
                            <tr id="option-value-row<?php echo $option_value_row; ?>">
                              <td class="text-left"><select name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][option_value_id]" class="form-control">
                                  <?php if (isset($option_values[$product_option['option_id']])) { ?>
                                  <?php foreach ($option_values[$product_option['option_id']] as $option_value) { ?>
                                  <?php if ($option_value['option_value_id'] == $product_option_value['option_value_id']) { ?>
                                  <option value="<?php echo $option_value['option_value_id']; ?>" selected="selected"><?php echo $option_value['name']; ?></option>
                                  <?php } else { ?>
                                  <option value="<?php echo $option_value['option_value_id']; ?>"><?php echo $option_value['name']; ?></option>
                                  <?php } ?>
                                  <?php } ?>
                                  <?php } ?>
                                </select>
                                <input type="hidden" name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][product_option_value_id]" value="<?php echo $product_option_value['product_option_value_id']; ?>" /></td>
                              <td class="text-right"><input type="text" name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][quantity]" value="<?php echo $product_option_value['quantity']; ?>" placeholder="<?php echo $entry_quantity; ?>" class="form-control" /></td>
                              <td class="text-left"><select name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][subtract]" class="form-control">
                                  <?php if ($product_option_value['subtract']) { ?>
                                  <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                                  <option value="0"><?php echo $text_no; ?></option>
                                  <?php } else { ?>
                                  <option value="1"><?php echo $text_yes; ?></option>
                                  <option value="0" selected="selected"><?php echo $text_no; ?></option>
                                  <?php } ?>
                                </select></td>
                              <td class="text-right"><select name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][price_prefix]" class="form-control">
                                  <?php if ($product_option_value['price_prefix'] == '+') { ?>
                                  <option value="+" selected="selected">+</option>
                                  <?php } else { ?>
                                  <option value="+">+</option>
                                  <?php } ?>
                                  <?php if ($product_option_value['price_prefix'] == '-') { ?>
                                  <option value="-" selected="selected">-</option>
                                  <?php } else { ?>
                                  <option value="-">-</option>
                                  <?php } ?>
                                </select>
                                <input type="text" name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][price]" value="<?php echo $product_option_value['price']; ?>" placeholder="<?php echo $entry_price; ?>" class="form-control" /></td>
                              <td class="text-right"><select name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][points_prefix]" class="form-control">
                                  <?php if ($product_option_value['points_prefix'] == '+') { ?>
                                  <option value="+" selected="selected">+</option>
                                  <?php } else { ?>
                                  <option value="+">+</option>
                                  <?php } ?>
                                  <?php if ($product_option_value['points_prefix'] == '-') { ?>
                                  <option value="-" selected="selected">-</option>
                                  <?php } else { ?>
                                  <option value="-">-</option>
                                  <?php } ?>
                                </select>
                                <input type="text" name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][points]" value="<?php echo $product_option_value['points']; ?>" placeholder="<?php echo $entry_points; ?>" class="form-control" /></td>
                              <td class="text-right"><select name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][weight_prefix]" class="form-control">
                                  <?php if ($product_option_value['weight_prefix'] == '+') { ?>
                                  <option value="+" selected="selected">+</option>
                                  <?php } else { ?>
                                  <option value="+">+</option>
                                  <?php } ?>
                                  <?php if ($product_option_value['weight_prefix'] == '-') { ?>
                                  <option value="-" selected="selected">-</option>
                                  <?php } else { ?>
                                  <option value="-">-</option>
                                  <?php } ?>
                                </select>
                                <input type="text" name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][weight]" value="<?php echo $product_option_value['weight']; ?>" placeholder="<?php echo $entry_weight; ?>" class="form-control" /></td> 
					<td><input type="text" name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][optsku]" value="<?php echo $product_option_value["optsku"]; ?>" size="12" /></td> <!-- *suppler* -->
                              <td class="text-left"><button type="button" onclick="$(this).tooltip('destroy');$('#option-value-row<?php echo $option_value_row; ?>').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
                            </tr>
                            <?php $option_value_row++; ?>
                            <?php } ?>
                          </tbody>
                          <tfoot>
                            <tr>                              <td colspan="7"></td> <!-- *suppler* -->
                              <td class="text-left"><button type="button" onclick="addOptionValue('<?php echo $option_row; ?>');" data-toggle="tooltip" title="<?php echo $button_option_value_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
                            </tr>
                          </tfoot>
                        </table>
                      </div>
                      <select id="option-values<?php echo $option_row; ?>" style="display: none;">
                        <?php if (isset($option_values[$product_option['option_id']])) { ?>
                        <?php foreach ($option_values[$product_option['option_id']] as $option_value) { ?>
                        <option value="<?php echo $option_value['option_value_id']; ?>"><?php echo $option_value['name']; ?></option>
                        <?php } ?>
                        <?php } ?>
                      </select>
                      <?php } ?>
                    </div>
                    <?php $option_row++; ?>
                    <?php } ?>
                  </div>
                </div>
              </div>
            </div>
            <div class="tab-pane" id="tab-recurring">
              <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover">
                  <thead>
                    <tr>
                      <td class="text-left"><?php echo $entry_recurring; ?></td>
                      <td class="text-left"><?php echo $entry_customer_group; ?></td>
                      <td class="text-left"></td>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $recurring_row = 0; ?>
                    <?php foreach ($product_recurrings as $product_recurring) { ?>
                    
                    <tr id="recurring-row<?php echo $recurring_row; ?>">
                      <td class="text-left"><select name="product_recurrings[<?php echo $recurring_row; ?>][recurring_id]" class="form-control">
                          <?php foreach ($recurrings as $recurring) { ?>
                          <?php if ($recurring['recurring_id'] == $product_recurring['recurring_id']) { ?>
                          <option value="<?php echo $recurring['recurring_id']; ?>" selected="selected"><?php echo $recurring['name']; ?></option>
                          <?php } else { ?>
                          <option value="<?php echo $recurring['recurring_id']; ?>"><?php echo $recurring['name']; ?></option>
                          <?php } ?>
                          <?php } ?>
                        </select></td>
                      <td class="text-left"><select name="product_recurrings[<?php echo $recurring_row; ?>][customer_group_id]" class="form-control">
                          <?php foreach ($customer_groups as $customer_group) { ?>
                          <?php if ($customer_group['customer_group_id'] == $product_recurring['customer_group_id']) { ?>
                          <option value="<?php echo $customer_group['customer_group_id']; ?>" selected="selected"><?php echo $customer_group['name']; ?></option>
                          <?php } else { ?>
                          <option value="<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></option>
                          <?php } ?>
                          <?php } ?>
                        </select></td>
                      <td class="text-left"><button type="button" onclick="$('#recurring-row<?php echo $recurring_row; ?>').remove()" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
                    </tr>
                    <?php $recurring_row++; ?>
                    <?php } ?>
                  </tbody>
                  <tfoot>
                    <tr>
                      <td colspan="2"></td>
                      <td class="text-left"><button type="button" onclick="addRecurring()" data-toggle="tooltip" title="<?php echo $button_recurring_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
                    </tr>
                  </tfoot>
                </table>
              </div>
            </div>
            <div class="tab-pane" id="tab-discount">
              <div class="table-responsive">
                <table id="discount" class="table table-striped table-bordered table-hover">
                  <thead>
                    <tr>
                      <td class="text-left"><?php echo $entry_customer_group; ?></td>
                      <td class="text-right"><?php echo $entry_quantity; ?></td>
                      <td class="text-right"><?php echo $entry_priority; ?></td>
                      <td class="text-right"><?php echo $entry_price; ?></td>
                      <td class="text-left"><?php echo $entry_date_start; ?></td>
                      <td class="text-left"><?php echo $entry_date_end; ?></td>
                      <td></td>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $discount_row = 0; ?>
                    <?php foreach ($product_discounts as $product_discount) { ?>
                    <tr id="discount-row<?php echo $discount_row; ?>">
                      <td class="text-left"><select name="product_discount[<?php echo $discount_row; ?>][customer_group_id]" class="form-control">
                          <?php foreach ($customer_groups as $customer_group) { ?>
                          <?php if ($customer_group['customer_group_id'] == $product_discount['customer_group_id']) { ?>
                          <option value="<?php echo $customer_group['customer_group_id']; ?>" selected="selected"><?php echo $customer_group['name']; ?></option>
                          <?php } else { ?>
                          <option value="<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></option>
                          <?php } ?>
                          <?php } ?>
                        </select></td>
                      <td class="text-right"><input type="text" name="product_discount[<?php echo $discount_row; ?>][quantity]" value="<?php echo $product_discount['quantity']; ?>" placeholder="<?php echo $entry_quantity; ?>" class="form-control" /></td>
                      <td class="text-right"><input type="text" name="product_discount[<?php echo $discount_row; ?>][priority]" value="<?php echo $product_discount['priority']; ?>" placeholder="<?php echo $entry_priority; ?>" class="form-control" /></td>
                      <td class="text-right"><input type="text" name="product_discount[<?php echo $discount_row; ?>][price]" value="<?php echo $product_discount['price']; ?>" placeholder="<?php echo $entry_price; ?>" class="form-control" /></td>
                      <td class="text-left" style="width: 20%;"><div class="input-group date">
                          <input type="text" name="product_discount[<?php echo $discount_row; ?>][date_start]" value="<?php echo $product_discount['date_start']; ?>" placeholder="<?php echo $entry_date_start; ?>" data-date-format="YYYY-MM-DD" class="form-control" />
                          <span class="input-group-btn">
                          <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                          </span></div></td>
                      <td class="text-left" style="width: 20%;"><div class="input-group date">
                          <input type="text" name="product_discount[<?php echo $discount_row; ?>][date_end]" value="<?php echo $product_discount['date_end']; ?>" placeholder="<?php echo $entry_date_end; ?>" data-date-format="YYYY-MM-DD" class="form-control" />
                          <span class="input-group-btn">
                          <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                          </span></div></td>
                      <td class="text-left"><button type="button" onclick="$('#discount-row<?php echo $discount_row; ?>').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
                    </tr>
                    <?php $discount_row++; ?>
                    <?php } ?>
                  </tbody>
                  <tfoot>
                    <tr>
                      <td colspan="6"></td>
                      <td class="text-left"><button type="button" onclick="addDiscount();" data-toggle="tooltip" title="<?php echo $button_discount_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
                    </tr>
                  </tfoot>
                </table>
              </div>
            </div>
            <div class="tab-pane" id="tab-special">
              <div class="table-responsive">
                <table id="special" class="table table-striped table-bordered table-hover">
                  <thead>
                    <tr>
                      <td class="text-left"><?php echo $entry_customer_group; ?></td>
                      <td class="text-right"><?php echo $entry_priority; ?></td>
                      <td class="text-right"><?php echo $entry_price; ?></td>
                      <td class="text-left"><?php echo $entry_date_start; ?></td>
                      <td class="text-left"><?php echo $entry_date_end; ?></td>
                      <td></td>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $special_row = 0; ?>
                    <?php foreach ($product_specials as $product_special) { ?>
                    <tr id="special-row<?php echo $special_row; ?>">
                      <td class="text-left"><select name="product_special[<?php echo $special_row; ?>][customer_group_id]" class="form-control">
                          <?php foreach ($customer_groups as $customer_group) { ?>
                          <?php if ($customer_group['customer_group_id'] == $product_special['customer_group_id']) { ?>
                          <option value="<?php echo $customer_group['customer_group_id']; ?>" selected="selected"><?php echo $customer_group['name']; ?></option>
                          <?php } else { ?>
                          <option value="<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></option>
                          <?php } ?>
                          <?php } ?>
                        </select></td>
                      <td class="text-right"><input type="text" name="product_special[<?php echo $special_row; ?>][priority]" value="<?php echo $product_special['priority']; ?>" placeholder="<?php echo $entry_quantity; ?>" class="form-control" /></td>
                      <td class="text-right"><input type="text" name="product_special[<?php echo $special_row; ?>][price]" value="<?php echo $product_special['price']; ?>" placeholder="<?php echo $entry_price; ?>" class="form-control" /></td>
                      <td class="text-left" style="width: 20%;"><div class="input-group date">
                          <input type="text" name="product_special[<?php echo $special_row; ?>][date_start]" value="<?php echo $product_special['date_start']; ?>" placeholder="<?php echo $entry_date_start; ?>" data-date-format="YYYY-MM-DD" class="form-control" />
                          <span class="input-group-btn">
                          <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                          </span></div></td>
                      <td class="text-left" style="width: 20%;"><div class="input-group date">
                          <input type="text" name="product_special[<?php echo $special_row; ?>][date_end]" value="<?php echo $product_special['date_end']; ?>" placeholder="<?php echo $entry_date_end; ?>" data-date-format="YYYY-MM-DD" class="form-control" />
                          <span class="input-group-btn">
                          <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                          </span></div></td>
                      <td class="text-left"><button type="button" onclick="$('#special-row<?php echo $special_row; ?>').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
                    </tr>
                    <?php $special_row++; ?>
                    <?php } ?>
                  </tbody>
                  <tfoot>
                    <tr>
                      <td colspan="5"></td>
                      <td class="text-left"><button type="button" onclick="addSpecial();" data-toggle="tooltip" title="<?php echo $button_special_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
                    </tr>
                  </tfoot>
                </table>
              </div>
            </div>
            <div class="tab-pane" id="tab-image">
              <div class="table-responsive">
                <table id="images" class="table table-striped table-bordered table-hover">
                  <thead>
                    <tr>
                      <td class="text-left"><?php echo $entry_image; ?></td>
                      <td class="text-right"><?php echo $entry_sort_order; ?></td>
                      <td></td>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $image_row = 0; ?>
                    <?php foreach ($product_images as $product_image) { ?>
                    <tr id="image-row<?php echo $image_row; ?>">
                      <td class="text-left"><a href="" id="thumb-image<?php echo $image_row; ?>" data-toggle="image" class="img-thumbnail"><img src="<?php echo $product_image['thumb']; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a><input type="hidden" name="product_image[<?php echo $image_row; ?>][image]" value="<?php echo $product_image['image']; ?>" id="input-image<?php echo $image_row; ?>" /></td>
                      <td class="text-right"><input type="text" name="product_image[<?php echo $image_row; ?>][sort_order]" value="<?php echo $product_image['sort_order']; ?>" placeholder="<?php echo $entry_sort_order; ?>" class="form-control" /></td>
                      <td class="text-left"><button type="button" onclick="$('#image-row<?php echo $image_row; ?>').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
                    </tr>
                    <?php $image_row++; ?>
                    <?php } ?>
                  </tbody>
                  <tfoot>
                    <tr>
                      <td colspan="2"></td>
                      <td class="text-left"><button type="button" onclick="addImage();" data-toggle="tooltip" title="<?php echo $button_image_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
                    </tr>
                  </tfoot>
                </table>
              </div>
            </div>
            <div class="tab-pane" id="tab-reward">
              <div class="form-group">
                <label class="col-lg-2 control-label" for="input-points"><span data-toggle="tooltip" title="<?php echo $help_points; ?>"><?php echo $entry_points; ?></span></label>
                <div class="col-lg-10">
                  <input type="text" name="points" value="<?php echo $points; ?>" placeholder="<?php echo $entry_points; ?>" id="input-points" class="form-control" />
                </div>
              </div>
              <div class="table-responsive">
                <table class="table table-bordered table-hover">
                  <thead>
                    <tr>
                      <td class="text-left"><?php echo $entry_customer_group; ?></td>
                      <td class="text-right"><?php echo $entry_reward; ?></td>
                    </tr>
                  </thead>
                  <tbody>
                    <?php foreach ($customer_groups as $customer_group) { ?>
                    <tr>
                      <td class="text-left"><?php echo $customer_group['name']; ?></td>
                      <td class="text-right"><input type="text" name="product_reward[<?php echo $customer_group['customer_group_id']; ?>][points]" value="<?php echo isset($product_reward[$customer_group['customer_group_id']]) ? $product_reward[$customer_group['customer_group_id']]['points'] : ''; ?>" class="form-control" /></td>
                    </tr>
                    <?php } ?>
                  </tbody>
                </table>
              </div>
            </div>
            <div class="tab-pane" id="tab-design">
              <div class="table-responsive">
                <table class="table table-bordered table-hover">
                  <thead>
                    <tr>
                      <td class="text-left"><?php echo $entry_store; ?></td>
                      <td class="text-left"><?php echo $entry_layout; ?></td>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td class="text-left"><?php echo $text_default; ?></td>
                      <td class="text-left"><select name="product_layout[0]" class="form-control">
                          <option value=""></option>
                          <?php foreach ($layouts as $layout) { ?>
                          <?php if (isset($product_layout[0]) && $product_layout[0] == $layout['layout_id']) { ?>
                          <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                          <?php } else { ?>
                          <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                          <?php } ?>
                          <?php } ?>
                        </select></td>
                    </tr>
                    <?php foreach ($stores as $store) { ?>
                    <tr>
                      <td class="text-left"><?php echo $store['name']; ?></td>
                      <td class="text-left"><select name="product_layout[<?php echo $store['store_id']; ?>]" class="form-control">
                          <option value=""></option>
                          <?php foreach ($layouts as $layout) { ?>
                          <?php if (isset($product_layout[$store['store_id']]) && $product_layout[$store['store_id']] == $layout['layout_id']) { ?>
                          <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                          <?php } else { ?>
                          <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                          <?php } ?>
                          <?php } ?>
                        </select></td>
                    </tr>
                    <?php } ?>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
  <!-- OCFilter start -->
  <script type="text/javascript"><!--
  ocfilter.php = {
  	text_select: '<?php echo $text_select; ?>',
  	ocfilter_select_category: '<?php echo $ocfilter_select_category; ?>',
  	entry_values: '<?php echo $entry_values; ?>',
  	tab_ocfilter: '<?php echo $tab_ocfilter; ?>'
  };

  ocfilter.php.languages = [];

  <?php foreach ($languages as $language) { ?>
  ocfilter.php.languages.push({
  	'language_id': <?php echo $language['language_id']; ?>,
  	'name': '<?php echo $language['name']; ?>',
    'image': '<?php echo $language['image']; ?>'
  });
  <?php } ?>

  //--></script>
  <!-- OCFilter end -->
  
  <script type="text/javascript"><!--
<?php foreach ($languages as $language) { ?>
$('#input-description<?php echo $language['language_id']; ?>').summernote({height: 300});
<?php } ?>
//--></script> 
 
<script>
	
function generate(){
	$
}

function translit(){
// Символ, на который будут заменяться все спецсимволы
var space = '-';
// Берем значение из нужного поля и переводим в нижний регистр
var text = $('#input-sku').val().toLowerCase()+'-'+$('#input-name<?php echo $language['language_id']; ?>').val().toLowerCase();
var title = $('#input-sku').val()+' '+$('#input-name<?php echo $language['language_id']; ?>').val();   
var description = 'Купить '+$('#input-sku').val()+' '+$('#input-name<?php echo $language['language_id']; ?>').val()+', купить '+$('#input-sku').val()+' '+$('#input-name<?php echo $language['language_id']; ?>').val()+' в Киеве, '+$('#input-sku').val()+', цена на '+$('#input-sku').val()+' '+$('#input-name<?php echo $language['language_id']; ?>').val()+', купить дешево '+$('#input-sku').val()+' в Киеве.';
	
// Массив для транслитерации
var transl = {
'а': 'a', 'б': 'b', 'в': 'v', 'г': 'g', 'д': 'd', 'е': 'e', 'ё': 'e', 'ж': 'zh',
'з': 'z', 'и': 'i', 'й': 'j', 'к': 'k', 'л': 'l', 'м': 'm', 'н': 'n',
'о': 'o', 'п': 'p', 'р': 'r','с': 's', 'т': 't', 'у': 'u', 'ф': 'f', 'х': 'h',
'ц': 'c', 'ч': 'ch', 'ш': 'sh', 'щ': 'sh','ъ': space, 'ы': 'y', 'ь': space, 'э': 'e', 'ю': 'yu', 'я': 'ya',
' ': space, '_': space, '`': space, '~': space, '!': space, '@': space,
'#': space, '$': space, '%': space, '^': space, '&': space, '*': space,
'(': space, ')': space,'-': space, '\=': space, '+': space, '[': space,
']': space, '\\': space, '|': space, '/': space,'.': space, ',': space,
'{': space, '}': space, '\'': space, '"': space, ';': space, ':': space,
'?': space, '<': space, '>': space, '№':space
}
               
var result = '';
var curent_sim = '';
               
for(i=0; i < text.length; i++) {
    // Если символ найден в массиве то меняем его
    if(transl[text[i]] != undefined) {
         if(curent_sim != transl[text[i]] || curent_sim != space){
             result += transl[text[i]];
             curent_sim = transl[text[i]];
                                                        }                                                                            
    }
    // Если нет, то оставляем так как есть
    else {
        result += text[i];
        curent_sim = text[i];
    }                             
}         
               
result = TrimStr(result);              
               
// Выводим результат
$('#input-keyword').val(result);
$('#input-meta-title<?php echo $language['language_id']; ?>').val(title);
$('#input-meta-description<?php echo $language['language_id']; ?>').val(description);
}
function TrimStr(s) {
    s = s.replace(/^-/, '');
    return s.replace(/-$/, '');
}
// Выполняем транслитерацию при вводе текста в поле
$(function(){
    $('#input-name<?php echo $language['language_id']; ?>').keyup(function(){
         translit();
         return false;
    });
	$('#input-sku').keyup(function(){
         translit();
         return false;
    });
}); 

</script>
  <script type="text/javascript"><!--
// Manufacturer
$('input[name=\'manufacturer\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=catalog/manufacturer/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',			
			success: function(json) {
				json.unshift({
					manufacturer_id: 0,
					name: '<?php echo $text_none; ?>'
				});
				
				response($.map(json, function(item) {
					return {
						label: item['name'],
						value: item['manufacturer_id']
					}
				}));
			}
		});
	},
	'select': function(item) {
		$('input[name=\'manufacturer\']').val(item['label']);
		$('input[name=\'manufacturer_id\']').val(item['value']);
		$('input[name=\'model\']').val(item['value']+""+$('input[name=\'product_id\']').val());
	}	
});

// Category
$('input[name=\'category\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=catalog/category/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',			
			success: function(json) {
				response($.map(json, function(item) {
					return {
						label: item['name'],
						value: item['category_id']
					}
				}));
			}
		});
	},
	'select': function(item) {
		$('input[name=\'category\']').val('');
		
		$('#product-category' + item['value']).remove();
		
		$('#product-category').append('<div id="product-category' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="product_category[]" value="' + item['value'] + '" /></div>');	
	}
});

$('#product-category').delegate('.fa-minus-circle', 'click', function() {
	$(this).parent().remove();
});

// Filter
$('input[name=\'filter\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=catalog/filter/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',			
			success: function(json) {
				response($.map(json, function(item) {
					return {
						label: item['name'],
						value: item['filter_id']
					}
				}));
			}
		});
	},
	'select': function(item) {
		$('input[name=\'filter\']').val('');
		
		$('#product-filter' + item['value']).remove();
		
		$('#product-filter').append('<div id="product-filter' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="product_filter[]" value="' + item['value'] + '" /></div>');	
	}	
});

$('#product-filter').delegate('.fa-minus-circle', 'click', function() {
	$(this).parent().remove();
});

// Downloads
$('input[name=\'download\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=catalog/download/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',			
			success: function(json) {
				response($.map(json, function(item) {
					return {
						label: item['name'],
						value: item['download_id']
					}
				}));
			}
		});
	},
	'select': function(item) {
		$('input[name=\'download\']').val('');
		
		$('#product-download' + item['value']).remove();
		
		$('#product-download').append('<div id="product-download' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="product_download[]" value="' + item['value'] + '" /></div>');	
	}	
});

$('#product-download').delegate('.fa-minus-circle', 'click', function() {
	$(this).parent().remove();
});

// Related
$('input[name=\'related\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=catalog/product/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',			
			success: function(json) {
				response($.map(json, function(item) {
					return {
						label: item['name'],
						value: item['product_id']
					}
				}));
			}
		});
	},
	'select': function(item) {
		$('input[name=\'related\']').val('');
		
		$('#product-related' + item['value']).remove();
		
		$('#product-related').append('<div id="product-related' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="product_related[]" value="' + item['value'] + '" /></div>');	
	}	
});

$('#product-related').delegate('.fa-minus-circle', 'click', function() {
	$(this).parent().remove();
});
	  
	  // Additional
$('input[name=\'additional\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=catalog/product/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',			
			success: function(json) {
				response($.map(json, function(item) {
					return {
						label: item['name'],
						value: item['product_id']
					}
				}));
			}
		});
	},
	'select': function(item) {
		$('input[name=\'additional\']').val('');
		
		$('#product-additional' + item['value']).remove();
		
		$('#product-additional').append('<div id="product-additional' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="product_additional[]" value="' + item['value'] + '" /></div>');	
	}	
});

$('#product-additional').delegate('.fa-minus-circle', 'click', function() {
	$(this).parent().remove();
});
//--></script> 
  <script type="text/javascript"><!--
var attribute_row = <?php echo $attribute_row; ?>;

function addAttribute() {
    html  = '<tr id="attribute-row' + attribute_row + '">';
	html += '  <td class="text-left" style="width: 20%;"><input type="text" name="product_attribute[' + attribute_row + '][name]" value="" placeholder="<?php echo $entry_attribute; ?>" class="form-control" /><input type="hidden" name="product_attribute[' + attribute_row + '][attribute_id]" value="" /></td>';
	html += '  <td class="text-left">';
	<?php foreach ($languages as $language) { ?>
	html += '<div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span><textarea name="product_attribute[' + attribute_row + '][product_attribute_description][<?php echo $language['language_id']; ?>][text]" rows="5" placeholder="<?php echo $entry_text; ?>" class="form-control"></textarea></div>';
    <?php } ?>
	html += '  </td>';
	html += '  <td class="text-left"><button type="button" onclick="$(\'#attribute-row' + attribute_row + '\').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
    html += '</tr>';
	
	$('#attribute tbody').append(html);
	
	attributeautocomplete(attribute_row);
	
	attribute_row++;
}

function attributeautocomplete(attribute_row) {
	$('input[name=\'product_attribute[' + attribute_row + '][name]\']').autocomplete({
		'source': function(request, response) {
			$.ajax({
				url: 'index.php?route=catalog/attribute/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
				dataType: 'json',			
				success: function(json) {
					response($.map(json, function(item) {
						return {
							category: item.attribute_group,
							label: item.name,
							value: item.attribute_id
						}
					}));
				}
			});
		},
		'select': function(item) {
			$('input[name=\'product_attribute[' + attribute_row + '][name]\']').val(item['label']);
			$('input[name=\'product_attribute[' + attribute_row + '][attribute_id]\']').val(item['value']);
		}
	});
}

$('#attribute tbody tr').each(function(index, element) {
	attributeautocomplete(index);
});
//--></script> 
  <script type="text/javascript"><!--	
var option_row = <?php echo $option_row; ?>;

$('input[name=\'option\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=catalog/option/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',			
			success: function(json) {
				response($.map(json, function(item) {
					return {
						category: item['category'],
						label: item['name'],
						value: item['option_id'],
						type: item['type'],
						option_value: item['option_value']
					}
				}));
			}
		});
	},
	'select': function(item) {
		html  = '<div class="tab-pane" id="tab-option' + option_row + '">';
		html += '	<input type="hidden" name="product_option[' + option_row + '][product_option_id]" value="" />';
		html += '	<input type="hidden" name="product_option[' + option_row + '][name]" value="' + item['label'] + '" />';
		html += '	<input type="hidden" name="product_option[' + option_row + '][option_id]" value="' + item['value'] + '" />';
		html += '	<input type="hidden" name="product_option[' + option_row + '][type]" value="' + item['type'] + '" />';
		
		html += '	<div class="form-group">';
		html += '	  <label class="col-sm-2 control-label" for="input-required' + option_row + '"><?php echo $entry_required; ?></label>';
		html += '	  <div class="col-sm-10"><select name="product_option[' + option_row + '][required]" id="input-required' + option_row + '" class="form-control">';
		html += '	      <option value="1"><?php echo $text_yes; ?></option>';
		html += '	      <option value="0" selected="selected"><?php echo $text_no; ?></option>';
		html += '	  </select></div>';
		html += '	</div>';
		
		if (item['type'] == 'text') {
			html += '	<div class="form-group">';
			html += '	  <label class="col-sm-2 control-label" for="input-value' + option_row + '"><?php echo $entry_option_value; ?></label>';
			html += '	  <div class="col-sm-10"><input type="text" name="product_option[' + option_row + '][value]" value="" placeholder="<?php echo $entry_option_value; ?>" id="input-value' + option_row + '" class="form-control" /></div>';
			html += '	</div>';
		}
		
		if (item['type'] == 'textarea') {
			html += '	<div class="form-group">';
			html += '	  <label class="col-sm-2 control-label" for="input-value' + option_row + '"><?php echo $entry_option_value; ?></label>';
			html += '	  <div class="col-sm-10"><textarea name="product_option[' + option_row + '][value]" rows="5" placeholder="<?php echo $entry_option_value; ?>" id="input-value' + option_row + '" class="form-control"></textarea></div>';
			html += '	</div>';			
		}
		 
		if (item['type'] == 'file') {
			html += '	<div class="form-group" style="display: none;">';
			html += '	  <label class="col-sm-2 control-label" for="input-value' + option_row + '"><?php echo $entry_option_value; ?></label>';
			html += '	  <div class="col-sm-10"><input type="text" name="product_option[' + option_row + '][value]" value="" placeholder="<?php echo $entry_option_value; ?>" id="input-value' + option_row + '" class="form-control" /></div>';
			html += '	</div>';
		}
						
		if (item['type'] == 'date') {
			html += '	<div class="form-group">';
			html += '	  <label class="col-sm-2 control-label" for="input-value' + option_row + '"><?php echo $entry_option_value; ?></label>';
			html += '	  <div class="col-sm-3"><div class="input-group date"><input type="text" name="product_option[' + option_row + '][value]" value="" placeholder="<?php echo $entry_option_value; ?>" data-date-format="YYYY-MM-DD" id="input-value' + option_row + '" class="form-control" /><span class="input-group-btn"><button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button></span></div></div>';
			html += '	</div>';
		}
		
		if (item['type'] == 'time') {
			html += '	<div class="form-group">';
			html += '	  <label class="col-sm-2 control-label" for="input-value' + option_row + '"><?php echo $entry_option_value; ?></label>';
			html += '	  <div class="col-sm-10"><div class="input-group time"><input type="text" name="product_option[' + option_row + '][value]" value="" placeholder="<?php echo $entry_option_value; ?>" data-date-format="HH:mm" id="input-value' + option_row + '" class="form-control" /><span class="input-group-btn"><button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button></span></div></div>';
			html += '	</div>';
		}
				
		if (item['type'] == 'datetime') {
			html += '	<div class="form-group">';
			html += '	  <label class="col-sm-2 control-label" for="input-value' + option_row + '"><?php echo $entry_option_value; ?></label>';
			html += '	  <div class="col-sm-10"><div class="input-group datetime"><input type="text" name="product_option[' + option_row + '][value]" value="" placeholder="<?php echo $entry_option_value; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-value' + option_row + '" class="form-control" /><span class="input-group-btn"><button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button></span></div></div>';
			html += '	</div>';
		}
			
		if (item['type'] == 'select' || item['type'] == 'radio' || item['type'] == 'checkbox' || item['type'] == 'image') {
			html += '<div class="table-responsive">';
			html += '  <table id="option-value' + option_row + '" class="table table-striped table-bordered table-hover">';
			html += '  	 <thead>'; 
			html += '      <tr>';
			html += '        <td class="text-left"><?php echo $entry_option_value; ?></td>';
			html += '        <td class="text-right"><?php echo $entry_quantity; ?></td>';
			html += '        <td class="text-left"><?php echo $entry_subtract; ?></td>';
			html += '        <td class="text-right"><?php echo $entry_price; ?></td>';
			html += '        <td class="text-right"><?php echo $entry_option_points; ?></td>';
			html += '        <td class="text-right"><?php echo $entry_weight; ?></td>'; 
			html += '        <td class="right"><?php echo $entry_optsku; ?></td>'; <!-- *suppler* -->
			html += '        <td></td>';
			html += '      </tr>';
			html += '  	 </thead>';
			html += '  	 <tbody>';
			html += '    </tbody>';
			html += '    <tfoot>';
			html += '      <tr>';
			html += '        <td colspan="6"></td>';
			html += '        <td class="text-left"><button type="button" onclick="addOptionValue(' + option_row + ');" data-toggle="tooltip" title="<?php echo $button_option_value_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>';
			html += '      </tr>';
			html += '    </tfoot>';
			html += '  </table>';
			html += '</div>';
			
            html += '  <select id="option-values' + option_row + '" style="display: none;">';
			
            for (i = 0; i < item['option_value'].length; i++) {
				html += '  <option value="' + item['option_value'][i]['option_value_id'] + '">' + item['option_value'][i]['name'] + '</option>';
            }

            html += '  </select>';	
			html += '</div>';	
		}
		
		$('#tab-option .tab-content').append(html);
			
		$('#option > li:last-child').before('<li><a href="#tab-option' + option_row + '" data-toggle="tab"><i class="fa fa-minus-circle" onclick="$(\'a[href=\\\'#tab-option' + option_row + '\\\']\').parent().remove(); $(\'#tab-option' + option_row + '\').remove(); $(\'#option a:first\').tab(\'show\')"></i> ' + item['label'] + '</li>');
		
		$('#option a[href=\'#tab-option' + option_row + '\']').tab('show');
		
		$('.date').datetimepicker({
			pickTime: false
		});
		
		$('.time').datetimepicker({
			pickDate: false
		});
		
		$('.datetime').datetimepicker({
			pickDate: true,
			pickTime: true
		});
				
		option_row++;
	}	
});
//--></script> 
  <script type="text/javascript"><!--		
var option_value_row = <?php echo $option_value_row; ?>;

function addOptionValue(option_row) {	
	html  = '<tr id="option-value-row' + option_value_row + '">';
	html += '  <td class="text-left"><select name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][option_value_id]" class="form-control">';
	html += $('#option-values' + option_row).html();
	html += '  </select><input type="hidden" name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][product_option_value_id]" value="" /></td>';
	html += '  <td class="text-right"><input type="text" name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][quantity]" value="" placeholder="<?php echo $entry_quantity; ?>" class="form-control" /></td>'; 
	html += '  <td class="text-left"><select name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][subtract]" class="form-control">';
	html += '    <option value="1"><?php echo $text_yes; ?></option>';
	html += '    <option value="0" selected="selected"><?php echo $text_no; ?></option>';
	html += '  </select></td>';
	html += '  <td class="text-right"><select name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][price_prefix]" class="form-control">';
	html += '    <option value="+">+</option>';
	html += '    <option value="-">-</option>';
	html += '  </select>';
	html += '  <input type="text" name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][price]" value="" placeholder="<?php echo $entry_price; ?>" class="form-control" /></td>';
	html += '  <td class="text-right"><select name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][points_prefix]" class="form-control">';
	html += '    <option value="+">+</option>';
	html += '    <option value="-">-</option>';
	html += '  </select>';
	html += '  <input type="text" name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][points]" value="" placeholder="<?php echo $entry_points; ?>" class="form-control" /></td>';	
	html += '  <td class="text-right"><select name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][weight_prefix]" class="form-control">';
	html += '    <option value="+">+</option>';
	html += '    <option value="-">-</option>';
	html += '  </select>';
	html += '  <input type="text" name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][weight]" value="" placeholder="<?php echo $entry_weight; ?>" class="form-control" /></td>'; 
	html += '    <td><input type="text" name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][optsku]" value="" size="12" /></td>'; <!-- *suppler* -->
	html += '  <td class="text-left"><button type="button" onclick="$(this).tooltip(\'destroy\');$(\'#option-value-row' + option_value_row + '\').remove();" data-toggle="tooltip" rel="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';
	
	$('#option-value' + option_row + ' tbody').append(html);
        $('[rel=tooltip]').tooltip();
        
	option_value_row++;
}
//--></script> 
  <script type="text/javascript"><!--
var discount_row = <?php echo $discount_row; ?>;

function addDiscount() {
	html  = '<tr id="discount-row' + discount_row + '">'; 
    html += '  <td class="text-left"><select name="product_discount[' + discount_row + '][customer_group_id]" class="form-control">';
    <?php foreach ($customer_groups as $customer_group) { ?>
    html += '    <option value="<?php echo $customer_group['customer_group_id']; ?>"><?php echo addslashes($customer_group['name']); ?></option>';
    <?php } ?>
    html += '  </select></td>';		
    html += '  <td class="text-right"><input type="text" name="product_discount[' + discount_row + '][quantity]" value="" placeholder="<?php echo $entry_quantity; ?>" class="form-control" /></td>';
    html += '  <td class="text-right"><input type="text" name="product_discount[' + discount_row + '][priority]" value="" placeholder="<?php echo $entry_priority; ?>" class="form-control" /></td>';
	html += '  <td class="text-right"><input type="text" name="product_discount[' + discount_row + '][price]" value="" placeholder="<?php echo $entry_price; ?>" class="form-control" /></td>';
    html += '  <td class="text-left"><div class="input-group date"><input type="text" name="product_discount[' + discount_row + '][date_start]" value="" placeholder="<?php echo $entry_date_start; ?>" data-date-format="YYYY-MM-DD" class="form-control" /><span class="input-group-btn"><button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button></span></div></td>';
	html += '  <td class="text-left"><div class="input-group date"><input type="text" name="product_discount[' + discount_row + '][date_end]" value="" placeholder="<?php echo $entry_date_end; ?>" data-date-format="YYYY-MM-DD" class="form-control" /><span class="input-group-btn"><button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button></span></div></td>';
	html += '  <td class="text-left"><button type="button" onclick="$(\'#discount-row' + discount_row + '\').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';	
	
	$('#discount tbody').append(html);

	$('.date').datetimepicker({
		pickTime: false
	});
	
	discount_row++;
}
//--></script> 
  <script type="text/javascript"><!--
var special_row = <?php echo $special_row; ?>;

function addSpecial() {
	html  = '<tr id="special-row' + special_row + '">'; 
    html += '  <td class="text-left"><select name="product_special[' + special_row + '][customer_group_id]" class="form-control">';
    <?php foreach ($customer_groups as $customer_group) { ?>
    html += '      <option value="<?php echo $customer_group['customer_group_id']; ?>"><?php echo addslashes($customer_group['name']); ?></option>';
    <?php } ?>
    html += '  </select></td>';		
    html += '  <td class="text-right"><input type="text" name="product_special[' + special_row + '][priority]" value="" placeholder="<?php echo $entry_priority; ?>" class="form-control" /></td>';
	html += '  <td class="text-right"><input type="text" name="product_special[' + special_row + '][price]" value="" placeholder="<?php echo $entry_price; ?>" class="form-control" /></td>';
    html += '  <td class="text-left" style="width: 20%;"><div class="input-group date"><input type="text" name="product_special[' + special_row + '][date_start]" value="" placeholder="<?php echo $entry_date_start; ?>" data-date-format="YYYY-MM-DD" class="form-control" /><span class="input-group-btn"><button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button></span></div></td>';
	html += '  <td class="text-left" style="width: 20%;"><div class="input-group date"><input type="text" name="product_special[' + special_row + '][date_end]" value="" placeholder="<?php echo $entry_date_end; ?>" data-date-format="YYYY-MM-DD" class="form-control" /><span class="input-group-btn"><button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button></span></div></td>';
	html += '  <td class="text-left"><button type="button" onclick="$(\'#special-row' + special_row + '\').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';
	
	$('#special tbody').append(html);

	$('.date').datetimepicker({
		pickTime: false
	});
		
	special_row++;
}
//--></script> 
  <script type="text/javascript"><!--
var image_row = <?php echo $image_row; ?>;

function addImage() {
	html  = '<tr id="image-row' + image_row + '">';
	html += '  <td class="text-left"><a href="" id="thumb-image' + image_row + '"data-toggle="image" class="img-thumbnail"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /><input type="hidden" name="product_image[' + image_row + '][image]" value="" id="input-image' + image_row + '" /></td>';
	html += '  <td class="text-right"><input type="text" name="product_image[' + image_row + '][sort_order]" value="" placeholder="<?php echo $entry_sort_order; ?>" class="form-control" /></td>';
	html += '  <td class="text-left"><button type="button" onclick="$(\'#image-row' + image_row  + '\').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';
	
	$('#images tbody').append(html);
	
	image_row++;
}
//--></script> 
  <script type="text/javascript"><!--
var recurring_row = <?php echo $recurring_row; ?>;

function addRecurring() {
	recurring_row++;
	
	html  = '';
	html += '<tr id="recurring-row' + recurring_row + '">';
	html += '  <td class="left">';
	html += '    <select name="product_recurrings[' + recurring_row + '][recurring_id]" class="form-control">>';
	<?php foreach ($recurrings as $recurring) { ?>
	html += '      <option value="<?php echo $recurring['recurring_id']; ?>"><?php echo $recurring['name']; ?></option>';
	<?php } ?>
	html += '    </select>';
	html += '  </td>';
	html += '  <td class="left">';
	html += '    <select name="product_recurrings[' + recurring_row + '][customer_group_id]" class="form-control">>';
	<?php foreach ($customer_groups as $customer_group) { ?>
	html += '      <option value="<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></option>';
	<?php } ?>
	html += '    <select>';
	html += '  </td>';
	html += '  <td class="left">';
	html += '    <a onclick="$(\'#recurring-row' + recurring_row + '\').remove()" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></a>';
	html += '  </td>';
	html += '</tr>';
	
	$('#tab-recurring table tbody').append(html);
}
//--></script> 
  <script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.time').datetimepicker({
	pickDate: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});
//--></script> 
  <script type="text/javascript"><!--
$('#language a:first').tab('show');
$('#option a:first').tab('show');
//--></script></div>
 
<script type="text/javascript"><!--
$(document).ready(function() {
if (sessionStorage['index_p']) {
var index_p = sessionStorage['index_p'];
       } else {
var index_p = 0;
       }
$('#myTab li:eq(' + index_p + ') a').tab('show');
sessionStorage['index_p'] = 0;
});  
function SaS() { 
   sessionStorage['index_p'] = $(".nav-tabs .active").index();
   $('#form-product').attr('action', '<?php echo (htmlspecialchars_decode($action_stay)); ?>');
   $('#form-product').submit();
   e.preventDefault();
};
//--></script> 
<?php echo $footer; ?> 