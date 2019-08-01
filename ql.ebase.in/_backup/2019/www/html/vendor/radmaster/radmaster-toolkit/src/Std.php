<?php
namespace Radmaster\Toolkit;

class Std {

    public static $_version = 0.9;

    public static function getVersion(){
	return self::class .': '. self::$_version;
    }

}

?>

