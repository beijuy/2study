<p>number:<input type="text" name=a value="<?php echo $number;?>"></p>
<?php
    $s=a;
    $s-=5000;
    if ($s<36000)
        $j=$s*0.03;
    else if($s<144000)
        $j=($s-36000)*0.1+2520;
    else if($s<300000)
        $j=($s-144000)*0.2+16920;
    else if($s<420000)
        $j=($s-300000)*0.25+31920;
    else if($s<660000)
        $j=($s-420000)*0.3+52920;
    else if($s<960000)
        $j=($s-660000)*0.35+85920;
    else
        $j=($s-960000)*0.45+181920;
?>