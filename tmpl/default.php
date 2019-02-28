<?php
// No direct access
defined('_JEXEC') or die; ?>

<div class="single-item">
<?php foreach($slides as $slide): ?>
    <div>
        <img src="<?php echo $slide->image; ?>">
    </div>
<?php endforeach; ?>
</div>

