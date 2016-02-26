<script>
    function removePlRow(ell)
    {
        if(confirm('Удалить услугу?')) {
            $(ell).parent().parent('.pl-row').remove();
        }

    }
    function addPlRow()
    {
        var row = $('<p class="row pl-row" data-key="">'
            + '<span class="col-xs-7"> <textarea name="Price[fields][name][]"></textarea></span>'
            + '<span class="col-xs-2"><input  type="text" name="Price[fields][unit][]" value=""></span>'
            + '<span class="col-xs-2"><input  type="text" name="Price[fields][value][]" value=""></span>'
            + '<span class="col-xs-1"><a class="remove-ico" href="#" onclick="removePlRow(this); return false;"> <i class="glyphicon glyphicon-remove"></i></a> </span>'
            + '</p>');
        $('.pl-rows').append(row);
    }
</script>
<p class="row pl-row">
    <span class="col-xs-7">Наименование услуги</span>
    <span class="col-xs-2">Единица измерения</span>
    <span class="col-xs-2">Цена</span>

</p>
<div class="pl-rows">
<?php
$key = -1;
if (!empty($items)) {
    foreach ($items as  $ell) {
        if (empty($ell['name']) && empty($ell['unit']) && empty($ell['value'])) continue;
        $key++;
        //var_dump($ell); exit;
        $name = isset($ell['name']) ? $ell['name'] : '';
        $value = isset($ell['value']) ? $ell['value'] : '';
        $unit = isset($ell['unit']) ? $ell['unit'] : ''; ?>

        <p class="row pl-row" data-key="<?= $key ?>">
            <span class="col-xs-7"> <textarea name="Price[fields][name][]"><?= $name ?></textarea></span>
            <span class="col-xs-2"><input  type="text" name="Price[fields][unit][]" value="<?= $unit ?>"></span>
            <span class="col-xs-2"><input  type="text" name="Price[fields][value][]" value="<?= $value ?>"></span>
            <span class="col-xs-1"><a class="remove-ico" href="#" onclick="removePlRow(this); return false;"> <i class="glyphicon glyphicon-remove"></i></a> </span>
        </p>
    <?php }
}  ?>
</div>
<p><button class="btn btn-success" onclick="addPlRow(); return false;"> <i class="glyphicon glyphicon-plus"></i> Добавить</button> </p>
<div style="display: none" class="pl-template">

</div>


<style>
    .pl-row input, .pl-row textarea {width: 100%; max-width: 100%; padding: 5px 10px}
    .pl-row .remove-ico {color: #ff0000;     padding-top: 10px}
</style>
<script>
    // auto adjust the height of
    $('.pl-row').on( 'keyup', 'textarea', function (e){
        $(this).css('height', 'auto' );
        $(this).height( this.scrollHeight );
    });
    $('.pl-row').find( 'textarea' ).keyup();
</script>