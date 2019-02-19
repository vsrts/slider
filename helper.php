<?php

class ModSliderHelper{
    public static function getSlider($params){

        $config = new JConfig();
        $main_db = $config->db;

        $db =JFactory::getDBO();
        $database_name = "sushi";

        if ($db->select($database_name)) {

            


        }

    }
}