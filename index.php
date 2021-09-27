<?php
    ob_start();
    // include header.php file
    include ('header.php');
?>

<?php
/* include banner area */
  include('Template/_banner-area.php');
/* include banner area */

/* include top sale section */
  include('Template/_top-sale.php');
/* include top sale section */

/* include special price section */
include('Template/_special-price.php');
/* include special price section */

/* include banner ads */
include('Template/_banner-adds.php');
/* include banner ads */

/* include new products */
include('Template/_new-products.php');
/* include new products */

/* include blogs */
include('Template/_blogs.php');
/* include blogs */

?>

<?php
// include footer.php file
include ('footer.php');
?>