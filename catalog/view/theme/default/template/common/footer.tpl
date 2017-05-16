<footer>
  <div class="container">
    <div class="row">
	<div class="col-sm-4">
        <script> window.fbAsyncInit = function() { FB.init({   appId      : '246477392426174',  xfbml      : true,    version    : 'v2.8' }); FB.AppEvents.logPageView(); };
	(function(d, s, id) { var js, fjs = d.getElementsByTagName(s)[0];  if (d.getElementById(id)) return;  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.8&appId=246477392426174";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));</script>
	<iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fvpppn&tabs=timeline&width=340&height=120&small_header=false&	adapt_container_width=true&hide_cover=false&show_facepile=true&appId=246477392426174" width="340" height="130" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
      </div>
      <?php if ($informations) { ?>
      <div class="col-sm-3">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>      
      <div class="col-sm-3">
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <!--div class="col-sm-2">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div-->
      <div class="col-sm-2">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <!--li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li-->
        </ul>
      </div>
    </div>
    <hr>
     <!--LOILE ADDED START-->
    <div class="row">
    <div class="col-sm-5">
    <p style="font-size:12px;color: #AEAEAE;"><?php echo $powered;?></p> 
    </div>
     <div class="col-sm-5"><strong>Điện thoại: </strong>
      <span style="font-size:14px; color:#FFF; font-weight:bold;">&nbsp;&nbsp;<?php echo $telephone; ?></span>
     </div>
     <div class="col-sm-5"><strong>Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
      <a style="font-size:14px; color:#FFF; font-weight:bold;" href="mailto:phuongnam@vpppn.com"     target="_blank">phuongnam@vpppn.com</a>
     </div>
    </div>
     <!--LOILE ADDED END-->    
  </div>
</footer>
<p id="back-top"><a href="#top" onclick="return backtotop();" title="Back to top"><!--em>Back to top</em-->
<span></span> </a></p>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//--> 

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>