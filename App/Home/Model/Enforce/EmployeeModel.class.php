<?php
/**********************
 *警员
 **********************/
namespace Home\Model\Enforce;

class EmployeeModel extends CommonModel{
    protected $tableName = 'employee';
    public function get_val_item()
    {
        return $this->getField('code,name');
    }
}