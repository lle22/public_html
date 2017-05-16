<?php echo $header; ?>
<style>
       #map {
        height: 500px;
        width: 100%;
       }
    </style>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <span style="color:#00a3d9;font-size: 36px;">
Vui lòng liên hệ với chúng tôi để được báo giá tốt nhất!</span>
<br/>
<span style="font-style: italic; color:#DE4A4A; font-size:14px; text-align:center;">
Giao hàng miễn phí, tận nơi trong nội thành TP.Hồ Chí Minh, Bình Dương, Đồng Nai và Long An. 
</span><br/><br/>

      <!--h3><?php echo $text_location; ?></h3-->
      <div class="panel panel-default">
        <div class="panel-body">
          <div class="row">
            <?php if ($image) { ?>
            <div class="col-sm-3"><img src="<?php echo $image; ?>" alt="<?php echo $store; ?>" title="<?php echo $store; ?>" class="img-thumbnail" />
            <!--Loi Add-->
            <br></br>
             <strong style="color:#000;"><?php echo $store; ?></strong><br />
             <address>
              <span style="font-size:13px; color:#DE4A4A;font-weight:bold;">
              <?php echo $address; ?></span>
              </address>
	  <!--br>
            - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br />
            <span style="font-weight:bold; color:#36C; font-size:14px;">ACB Hồ Chí Minh - Hội sở</span>
	    <br>- 
	    <strong>Tên tài khoản :</strong> Lê Lợi<br>
	     - <strong>Số tài khoản:
	    </strong>
	   <span style="font-size:14px; color:#DE4A4A; font-weight:bold;">59034869
	   </span>
	   </br-->
            <!--Loi Add end-->
            </div>
            <?php } ?>
            <div class="col-sm-3">
             <strong>Tài khoản ngân hàng:</strong><br />
            - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br />
            <span style="font-weight:bold; color:#DE4A4A; font-size:14px;">Vietin</span>
            <span style="font-weight:bold; color:#00a3d9; font-size:14px;"> bank chi nhánh 8</span>
	    <br>- 
	    <strong>Chủ tài khoản :</strong> Công Ty TNHH Thương Mại Dịch Vụ Văn Phòng Phẩm Phương Nam<br>
	     - <strong>Số tài khoản:
	    </strong>
	   <span style="font-size:14px; color:#DE4A4A; font-weight:bold;">
	   102010.000739959</span> 
              
            </div>
            <div class="col-sm-3"><strong><?php echo $text_telephone; ?></strong><br>
              <span style="font-size:14px; color:#DE4A4A; font-weight:bold;"><?php echo $telephone; ?></span>
              <br />
              <?php if ($fax) { ?>
              <strong><?php echo $text_fax; ?></strong><br>
              <span style="font-size:14px; color:#DE4A4A; font-weight:bold;"><?php echo $fax; ?></span>
              <?php } ?>
              <br />
              <!--LOILE ADDED START-->
              <strong><?php echo $entry_email; ?></strong><br>
              <span style="font-size:14px; color:#DE4A4A; font-weight:bold;"><a href="mailto:phuongnam@vpppn.com" target="_blank">phuongnam@vpppn.com</a></span>
              <!--LOILE ADDED END-->
            </div>
            <div class="col-sm-3">
              <?php if ($open) { ?>
              <strong><?php echo $text_open; ?></strong><br />
              <?php echo $open; ?><br />
              <br />
              <?php } ?>
              <?php if ($comment) { ?>
              <strong><?php echo $text_comment; ?></strong><br />
              <?php echo $comment; ?>
              <?php } ?>
            </div>
<!--LOILE ADDED map 09/01/2017 START-->
   <div id="map"></div>
    <script>
      function initMap() {
        var uluru = {lat: 10.72121, lng: 106.6616};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 15,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDoQLOehhXUiEPfdSjRZbso970L5ZnjlZk&callback=initMap">
    </script>
<!--LOILE ADDED Map 09//01/2017 END-->
          </div>
        </div>
      </div>
      <?php if ($locations) { ?>
      <h3><?php echo $text_store; ?></h3>
      <div class="panel-group" id="accordion">
        <?php foreach ($locations as $location) { ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><a href="#collapse-location<?php echo $location['location_id']; ?>" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion"><?php echo $location['name']; ?> <i class="fa fa-caret-down"></i></a></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-location<?php echo $location['location_id']; ?>">
            <div class="panel-body">
              <div class="row">
                <?php if ($location['image']) { ?>
                <div class="col-sm-3"><img src="<?php echo $location['image']; ?>" alt="<?php echo $location['name']; ?>" title="<?php echo $location['name']; ?>" class="img-thumbnail" /></div>
                <?php } ?>
                <div class="col-sm-3"><strong><?php echo $location['name']; ?></strong><br />
                  <address>
                  <?php echo $location['address']; ?>
                  </address>
                  <?php if ($location['geocode']) { ?>
                  <a href="https://maps.google.com/maps?q=<?php echo urlencode($location['geocode']); ?>&hl=en&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?php echo $button_map; ?></a>
                  <?php } ?>
                </div>
                <div class="col-sm-3"> <strong><?php echo $text_telephone; ?></strong><br>
                  <?php echo $location['telephone']; ?><br />
                  <br />
                  <?php if ($location['fax']) { ?>
                  <strong><?php echo $text_fax; ?></strong><br>
                  <?php echo $location['fax']; ?>
                  <?php } ?>
                </div>
                <div class="col-sm-3">
                  <?php if ($location['open']) { ?>
                  <strong><?php echo $text_open; ?></strong><br />
                  <?php echo $location['open']; ?><br />
                  <br />
                  <?php } ?>
                  <?php if ($location['comment']) { ?>
                  <strong><?php echo $text_comment; ?></strong><br />
                  <?php echo $location['comment']; ?>
                  <?php } ?>
                </div>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <fieldset>
          <h3><?php echo $text_contact; ?></h3>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
              <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" />
              <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
            <div class="col-sm-10">
              <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" />
              <?php if ($error_email) { ?>
              <div class="text-danger"><?php echo $error_email; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-enquiry"><?php echo $entry_enquiry; ?></label>
            <div class="col-sm-10">
              <textarea name="enquiry" rows="3" id="input-enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
              <?php if ($error_enquiry) { ?>
              <div class="text-danger"><?php echo $error_enquiry; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-captcha"><?php echo $entry_captcha; ?></label>
            <div class="col-sm-10">
              <input type="text" name="captcha" id="input-captcha" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-10 pull-right">
              <img src="index.php?route=tool/captcha" alt="" />
              <?php if ($error_captcha) { ?>
                <div class="text-danger"><?php echo $error_captcha; ?></div>
              <?php } ?>
            </div>
          </div>
        </fieldset>
        <div class="buttons">
          <div class="pull-right">
            <input class="btn btn-primary" type="submit" value="<?php echo $button_submit; ?>" />
          </div>
        </div>
      </form>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
