<?php
use yii\helpers\Url;

$this->title = Yii::t('easyii/page', 'Pages');

$module = $this->context->module->id;
?>

<?= $this->render('_menu') ?>

<?php if($data->count > 0) : ?>
    <table class="table table-hover">
        <thead>
            <tr>
                <?php if(IS_ROOT) : ?>
                    <th width="50">#</th>
                <?php endif; ?>
                <th><?= Yii::t('easyii', 'Title')?></th>
                <?php if(IS_ROOT) : ?>
                    <th><?= Yii::t('easyii', 'Slug')?></th>
                    <th width="30"></th>
                <?php endif; ?>
            </tr>
        </thead>
        <tbody>



    <?php foreach($data->models as $item) : ?>
        <?php $children = $item->children; ?>
        <?php $padding = 0; ?>

        <?= $this->render('_index_element' , ['item' => $item ,'children' => $children,'padding' => $padding, 'module' => $module]) ?>

        <?php if(count($children)) : ?>
            <?php $padding += 25; ?>
            <?php foreach ($children as $cItem) { ?>
                <?php $children1 = $cItem->children; ?>

                <?= $this->render('_index_element' , ['item' => $cItem ,'children' => $children1,'padding' => $padding, 'module' => $module]) ?>
                <?php if(count($children1)) : ?>
                    <?php $padding += 25; ?>
                    <?php foreach ($children1 as $cItem1) { ?>
                        <?php $children2 = $cItem1->children; ?>

                        <?= $this->render('_index_element' , ['item' => $cItem1 ,'children' => $children2,'padding' => $padding, 'module' => $module]) ?>

                        <?php if(count($children2)) : ?>
                            <?php $padding += 25; ?>
                            <?php foreach ($children as $cItem2) { ?>
                                <?php $children3 = $cItem2->children; ?>

                                <?= $this->render('_index_element' , ['item' => $cItem2 ,'children' => $children3,'padding' => $padding, 'module' => $module]) ?>

                            <?php } ?>
                        <?php endif; ?>

                    <?php } ?>
                <?php endif; ?>


            <?php } ?>
        <?php endif; ?>





    <?php endforeach; ?>
        </tbody>
    </table>
    <?= yii\widgets\LinkPager::widget([
        'pagination' => $data->pagination
    ]) ?>
<?php else : ?>
    <p><?= Yii::t('easyii', 'No records found') ?></p>
<?php endif; ?>