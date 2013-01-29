<?php

namespace Kendo\Dataviz\UI;

class StockChartYAxisItemTitle extends \Kendo\SerializableObject {
//>> Properties

    /**
    * The background color of the title. Any valid CSS color string will work here, including
hex and rgb.
    * @param string $value
    * @return \Kendo\Dataviz\UI\StockChartYAxisItemTitle
    */
    public function background($value) {
        return $this->setProperty('background', $value);
    }

    /**
    * The border of the title.
    * @param \Kendo\Dataviz\UI\StockChartYAxisItemTitleBorder $value
    * @return \Kendo\Dataviz\UI\StockChartYAxisItemTitle
    */
    public function border(\Kendo\Dataviz\UI\StockChartYAxisItemTitleBorder $value) {
        return $this->setProperty('border', $value);
    }

    /**
    * The text color of the title. Any valid CSS color string will work here, including hex and rgb.
    * @param string $value
    * @return \Kendo\Dataviz\UI\StockChartYAxisItemTitle
    */
    public function color($value) {
        return $this->setProperty('color', $value);
    }

    /**
    * The font style of the title.
    * @param string $value
    * @return \Kendo\Dataviz\UI\StockChartYAxisItemTitle
    */
    public function font($value) {
        return $this->setProperty('font', $value);
    }

    /**
    * The margin of the title.
    * @param float|Object $value
    * @return \Kendo\Dataviz\UI\StockChartYAxisItemTitle
    */
    public function margin($value) {
        return $this->setProperty('margin', $value);
    }

    /**
    * The padding of the title.
    * @param float|Object $value
    * @return \Kendo\Dataviz\UI\StockChartYAxisItemTitle
    */
    public function padding($value) {
        return $this->setProperty('padding', $value);
    }

    /**
    * The position of the title.
    * @param string $value
    * @return \Kendo\Dataviz\UI\StockChartYAxisItemTitle
    */
    public function position($value) {
        return $this->setProperty('position', $value);
    }

    /**
    * The rotation angle of the title.
    * @param float $value
    * @return \Kendo\Dataviz\UI\StockChartYAxisItemTitle
    */
    public function rotation($value) {
        return $this->setProperty('rotation', $value);
    }

    /**
    * The text of the title.
    * @param string $value
    * @return \Kendo\Dataviz\UI\StockChartYAxisItemTitle
    */
    public function text($value) {
        return $this->setProperty('text', $value);
    }

    /**
    * The visibility of the title.
    * @param boolean $value
    * @return \Kendo\Dataviz\UI\StockChartYAxisItemTitle
    */
    public function visible($value) {
        return $this->setProperty('visible', $value);
    }

//<< Properties
}

?>
