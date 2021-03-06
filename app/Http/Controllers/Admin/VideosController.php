<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Services\VideosService;
use App\Services\CategoryService;
use App\Services\IndustryService;
use App\Services\SolutionTypeService;
use App\Services\CheckPermissionService;
use Illuminate\Support\Facades\Input;

class VideosController extends Controller
{
    protected $videoService,$checkPermissionService;
    protected $catService;
    protected $indService;
    protected $solService;
    public function __construct(VideosService $videosService,CategoryService $categoryService,SolutionTypeService $sol,IndustryService $ind,CheckPermissionService $checkPermissionService)
    {
        $this->videoService = $videosService;
        $this->catService = $categoryService;
        $this->indService = $ind;
        $this->solService = $sol;
        $this->checkPermissionService = $checkPermissionService;

    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $videos = $this->videoService->getAllVideos();
        $isAuthorize = $this->checkPermissionService->checkPermission();
        return view('admin.experienceCentre',compact('videos','isAuthorize'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = $this->catService->getAllActiveCategory();
        $solutions = $this->solService->getIsActive();
        return view('admin.createExperienceCentre',compact('categories','solutions'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {


        $request->validate([
           "title" => "required",
            "category" => "required",
            "solution" => "required",
        ]);
        $data = $request->all();
        $result = $this->videoService->addVideo($request);
        if($result){
            return redirect()->route('experience-centre.index')->with('success-msg', ' Experience Centre added successfully.');
        }else{
            return redirect()->route('experience-centre.index')->with('error-msg', ' Something went wrong.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

        $experience = $this->videoService->getVideoById($id);
        $categories = $this->catService->getAllActiveCategory();
        $solutions = $this->solService->getIsActive();
        return view('admin.createExperienceCentre',['experience'=>$experience,'categories'=>$categories,'solutions'=>$solutions]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            "title" => "required",
            "category" => "required",
            "solution" => "required",
        ]);
        $result = $this->videoService->updateVideo($request,$id);
        if($result){
            return redirect()->route('experience-centre.index')->with('success-msg', ' Done');
        }else{
            return redirect()->route('experience-centre.index')->with('error-msg', ' Something went wrong.');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    public function dynamicForm(){
        $solutions = $this->solService->getIsActive();
        return view('admin.Form.experienceForm',compact('solutions'));
    }
}
