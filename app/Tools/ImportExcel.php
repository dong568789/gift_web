<?php
namespace App\Tools;

use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;

class ImportExcel {

    private $excel;

    private $limit = 2000;

    private $fields = null;

    public function __construct(array $fields, $limit = 0)
    {
        $this->fields = $fields;
        $limit > 0 && $this->limit = $limit;
    }

    /**
     * 需要导入的字段 例:['标题' => 'title']
     * @param array $field
     */
    public function data($file)
    {

        $this->excel = IOFactory::load($file);
        $excels = $this->excel->getAllSheets();

        $data = [];
        foreach ($excels as $excel) {
            $arrayData = $excel->toArray();
            $keys = $this->setHeader($arrayData[0]);
            unset($arrayData[0]);
            if(empty($keys)) continue;

            $data = array_merge($data, $this->parseData($arrayData, $keys));

        }

        return $data;
    }

    private function parseData($data, $keys)
    {
        $items = [];
        foreach($data as $key => $value){
            $item = [];
            foreach($keys as $k=>$v){
                $item[$v] = $value[$k];
            }
            $items[] = $item;
        }

        return $items;
    }

    private function setHeader($theads)
    {
        $keys = [];
        foreach($theads as $key => $value){
            if(isset($this->fields[$value])){
                $keys[$key] = $this->fields[$value];
            }
        }
        return $keys;
    }

}
