<?php
// No direct access
defined('_JEXEC') or die; ?>

<?php
                //$domain = idn_to_utf8($_SERVER['SERVER_NAME']);
                //$subdomain = explode('.', $domain);
                foreach($slides as $slide){
					echo $slide->image . "<br>";
                }
                ?>

             

