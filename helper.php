<?php

class ModSliderHelper{
	
    public static function getSlider($params){

        $config = new JConfig();
        $main_db = $config->db;

        $db =JFactory::getDBO();
        $database_name = "sushi";

        if ($db->select($database_name)) {

            $query = $db->getQuery(true);
            $query->select('*')
                ->from('slides');

            $db->setQuery($query);
            $results = $db->loadObjectList();

            $db->select($main_db);

            return $results;


        }

    }
	
	public static function getOnly($params){
		$config = new JConfig();
        $main_db = $config->db;

        $db =JFactory::getDBO();
        $database_name = "sushi";

        if ($db->select($database_name)) {

            $query = $db->getQuery(true);
            $query->select('*')
                ->from('slides');

            $db->setQuery($query);
            $results = $db->loadObjectList();

            $db->select($main_db);

            return $results;


        }
	}
}