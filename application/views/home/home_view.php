
<body>
<div id="container">
    <h1>Welcome </h1>
    <div id="body">
        <div class="gallery">
            <ul>
            <?php if(!empty($images)): foreach($images as $img): ?>
               <li><img src="uploads/<?php echo $img['image']; ?>" alt=""></li>
            <?php endforeach; endif; ?>
            </ul>
        </div>
    </div>
</div>
