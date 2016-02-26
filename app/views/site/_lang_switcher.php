<?php


?>

<ul class="clearfix">
    <?php foreach($items as $lang) { ?>
        <li><a href="<?= $lang['href'] ?>"><?= $lang['code'] ?></a> </li>
    <?php } ?>
</ul>