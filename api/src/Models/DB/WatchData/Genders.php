<?php
/**
 * Created by PhpStorm.
 * User: Popov
 * Date: 19.5.2019 г.
 * Time: 17:02
 */

namespace WatchApp\Models\DB\WatchData;


class Genders
{
    private $id;

    private $name;

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param mixed $id
     */
    public function setId($id)
    {
        $this->id = $id;
    }

    /**
     * @return mixed
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * @param mixed $name
     */
    public function setName($name)
    {
        $this->name = $name;
    }
}