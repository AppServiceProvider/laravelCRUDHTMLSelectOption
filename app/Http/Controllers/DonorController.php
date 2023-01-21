<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreDonorRequest;
use App\Http\Requests\UpdateDonorRequest;
use App\Models\Donor;
use Illuminate\Support\Facades\DB;

class DonorController extends Controller
{
   /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $citys = DB::table('citys')->select('name')->get();
        // $donors = DB::table('donors')->select(DB::raw('CONCAT(first_name, " ", last_name) as full_name'))->first();
        $donors = Donor::paginate(4);
        return view('index', compact('donors', 'citys'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $citys = DB::table('citys')->select('name')->get();
        return view('create',compact('citys'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreDonorRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreDonorRequest $request)
    {
        // return $request;
        $donor = new Donor();
        $donor->first_name = $request->first_name;
        $donor->last_name = $request->last_name;
        $donor->blood_donor_location = $request->blood_donor_location;
        $donor->save();
        return redirect()->route('donor.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Donor  $donor
     * @return \Illuminate\Http\Response
     */
    public function show(Donor $donor)
    {
        dd($donor);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Donor  $donor
     * @return \Illuminate\Http\Response
     */
    public function edit(Donor $donor)
    {
        // // way one 
        // $idWiseValue = $donor;
        // // return view('edit', compact('select'));
        // $donor = Donor::all();
        // // $donor = DB::table('citys')->select('name')->get();
        // // return view('edit', compact('selects', 'idWiseValue'));
        // return view('edit', compact('donor', 'idWiseValue'));
        // // way one 



        // way two 
        $idWiseValue = $donor;
        $city= DB::table('citys')->select('name')->get();
        return view('edit', compact('donor', 'idWiseValue','city'));
        // way two 

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateDonorRequest  $request
     * @param  \App\Models\Donor  $donor
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateDonorRequest $request, Donor $donor)
    {
        // dd($request);
        $donor->update($request->all());
        return redirect()->route('donor.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Donor  $donor
     * @return \Illuminate\Http\Response
     */
    public function destroy(Donor $donor)
    {
        // return $donor;

        if ($donor->delete()) {
            return redirect()->back();
        }
        echo "opps not deleted";
    }
}
