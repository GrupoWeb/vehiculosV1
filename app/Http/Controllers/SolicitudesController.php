<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SolicitudesController extends Controller
{
    public function ShowSolicitud(){
        return view('Solicitudes.ShowSolicitud');
    }
    public function steps(){
        return view('Solicitudes.steps');
    }

    public function index(){
        return view('panel.blank');
    }
}
