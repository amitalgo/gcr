<?php $__env->startSection('title'); ?>
    <?php echo e(ucfirst(substr(Route::currentRouteName(),strpos(Route::currentRouteName(),".") + 1))); ?> | Solution Catalog
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="container">

        <!-- Page-Title -->
        <div class="row">
            <div class="col-sm-12">
                <h4 class="page-title"> <?php echo e(ucfirst(substr(Route::currentRouteName(),strpos(Route::currentRouteName(),".") + 1))); ?> Solution Catalog</h4>
                <p class="text-muted page-title-alt">Welcome to GCR admin panel !</p>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <div class="card-box">
                    <div class="row">
                        <div class="col-sm-2">
                            <a class="btn btn-default waves-effect waves-light" href="<?php echo e(route('solution-type.index')); ?>"><i class="fa fa-reply"></i> Solution Catalog List</a>
                        </div>
                    </div>
                    <hr/>
                    <form class="form-horizontal" role="form" id="addForm" action="<?php if(@isset($type)): ?> <?php echo e(route('solution-type.update',['solution-type' => $type->getId()] )); ?> <?php else: ?><?php echo e(route('solution-type.store')); ?> <?php endif; ?>" method="POST" enctype="multipart/form-data">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Solution Catalog Name</label>
                                    <input class="form-control" required="required" placeholder="Solution Catalog " type="text" name="solutiontype"  value="<?php if(isset($type)): ?><?php echo e($type->getName()); ?> <?php endif; ?>">
                                </div>
                            </div>
                            <div class="col-md-6">
                                    <div class="col-md-7">
                                        <div class="form-group">
                                            <label>Image</label>
                                            <?php echo e(csrf_field()); ?>

                                            <?php if(isset($type)): ?>
                                            <input type="hidden" name="id" value="<?php echo e($type->getId()); ?>">
                                                <input type="hidden" name="_method" value="PUT">
                                            <?php endif; ?>
                                            <input class="filestyle" id="banner-img" data-size="sm" placeholder="Browse Image" type="file" name="image"/>
                                        </div>
                                    </div>
                                    <div class="col-md-5" id="img-preview">
                                        <?php if(isset($type)): ?>
                                            <img class="img-thumbnail thumb-lg" src="<?php echo e(asset($type->getImage())); ?>" alt="">
                                        <?php endif; ?>
                                    </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea rows="5"  id="description" required="required" class="form-control summernote" placeholder="Description" name="description"><?php if(isset($type)): ?> <?php echo e($type->getDescription()); ?> <?php endif; ?></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="clear-fix"></div>
                        <?php if(isset($type)): ?>
                        <div class="row">
                            <div class="form-group">
                                <label class="col-md-1 control-label text-left" for="cat">Status : </label>
                                <div class="col-md-6">
                                    <div class="radio radio-success radio-inline">
                                        <input type="radio" id="active_1" name="active" value="1" <?php echo e($type->getIsActive()?'checked':''); ?>>
                                        <label for="active_1">Active</label>
                                    </div>
                                    <div class="radio radio-danger radio-inline">
                                        <input type="radio" id="active_0" name="active" value="0" <?php echo e($type->getIsActive()?'':'checked'); ?>>
                                        <label for="active_0">Inactive</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php endif; ?>

                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Image</label>
                                <button style="float:right;" type="button" class="btn btn-icon waves-effect btn-default waves-light genImg"> <i class="fa fa-plus"></i> </button>
                            </div>
                            <div class="col-md-12 imgGrid">
                                <div class="form-group">
                                    <?php echo e(csrf_field()); ?>

                                    <?php if(isset($type)): ?>
                                        <input type="hidden" name="id" value="<?php echo e($type->getId()); ?>">
                                        <input type="hidden" name="_method" value="PUT">

                                        <?php $__currentLoopData = $type->getSolutionImage(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <span class="close fadeDiv">X</span>
                                                    <img class="img-thumbnail thumb-lg" src="<?php echo e(asset($value->getMediaUrl())); ?>" alt=""><br/><br/>
                                                    <input type="hidden" class="imageUrl" value="<?php echo e($value->getMediaUrl()); ?>" name="imageUrl[]"/>

                                                    <input class="filestyle actimage" data-size="sm" placeholder="Browse Image" type="file" name="actimage[]"/>
                                                </div>
                                            </div>

                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                    <?php else: ?>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <img class="img-thumbnail thumb-lg" src="" alt=""><span class="close fadeDiv">X</span><br/><br/>

                                                <input class="filestyle actimage" data-size="sm" placeholder="Browse Image" type="file" name="actimage[]"/>
                                            </div>
                                        </div>
                                    <?php endif; ?>
                                </div>
                            </div>
                            
                            
                            
                            
                            
                            
                            
                            
                        </div>
                        <div class="row">
                            <button type="submit" class="btn btn-default waves-effect waves-light btn-md">
                                Submit
                            </button>
                        </div>


                    </form>
                </div>
            </div>
        </div>

    </div>
    <?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.layouts.adminLayouts2', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>