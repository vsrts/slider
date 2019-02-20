<?php
// No direct access
defined('_JEXEC') or die; ?>

<?php
                //$domain = idn_to_utf8($_SERVER['SERVER_NAME']);
                //$subdomain = explode('.', $domain);
                foreach($slides as $slide){

                    if($slide->filter == 0){
                        echo $slide->image . "<br>";
                    }else if($slide->filter == 1){
                        echo "<pre>";
                            print_r($only);
                        echo "</pre>";
                    }

                }
                ?>

             

