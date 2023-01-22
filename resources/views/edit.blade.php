<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    @vite('resources/css/app.css')
</head>

<body>
    <div class="container mx-auto">
        <h5 class="w-full max-w-lg m-auto">Edit & Update</h5>
        <form class="w-full max-w-lg m-auto" action="{{ route('donor.update', $idWiseValue->id) }}" method="POST">
            @method('PUT')
            @csrf
            <div class="flex flex-wrap -mx-3 mb-6 pt-9">
                <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
                    <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
                        for="grid-first-name">
                        First Name
                    </label>

                    <input name="first_name"
                        class="appearance-none block w-full bg-gray-200 text-gray-700 border rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
                        id="grid-first-name" type="text" value="{{$idWiseValue->first_name}}">
                    @if ($errors->any())
                        @foreach ($errors->all() as $error)
                            <p class="text-red-500 text-xs italic">{{ $error }}</p>
                        @endforeach
                    @endif
                </div>
                <div class="w-full md:w-1/2 px-3">
                    <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
                        for="grid-last-name">
                        Last Name
                    </label>
                    <input name="last_name"
                        class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500"
                        id="grid-last-name" type="text" value="{{$idWiseValue->last_name}}">
                </div>
            </div>

            <div class="flex flex-wrap -mx-3 mb-2">
                <div class="w-full md:w-1/3 px-3 mb-6 md:mb-0">
                    <label for="blood_group" class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">
                        BLOOD Donor Location
                    </label>
                    <div class="relative">
                        <select name="blood_donor_location"
                            class="block appearance-none w-full bg-gray-200 border border-gray-200 text-gray-700 py-3 px-4 pr-8 rounded leading-tight focus:outline-none focus:bg-white focus:border-gray-500"
                            id="grid-state">
                            
                            {{-- <option value="">Select Blood</option> --}}
                            {{-- @foreach ($idWiseValue as $value) --}}
                            {{-- <option value="{{ $value->first_name }}">{{ $value->first_name }}</option> --}}
                            {{-- @endforeach --}}


                            {{-- way one  --}}
                            {{-- public function edit(Donor $donor)
                            {
                                $idWiseValue = $donor;
                                $donor = Donor::all();
                                return view('edit', compact('donor', 'idWiseValue'));
                            } --}}
                            {{-- @foreach ($donor as $value)
                                <option @if ($value->id == $idWiseValue->id) selected @endif value="{{ $value->blood_group }}">{{ $value->blood_group }}</option>
                            @endforeach --}}
                            {{-- way one  --}}


                            {{-- way two  --}}
                            {{-- @foreach ($city as $value)
                                <option @if ($value->name == $idWiseValue->blood_donor_location) selected @endif value="{{ $value->name }}">{{ $value->name }}</option>
                            @endforeach --}}
                            {{-- way two  --}}


                            
                            {{-- way two  --}}
                            @foreach ($city as $value)
                                <option @if ($value->id == $idWiseValue->blood_donor_location) selected @endif value="{{ $value->id }}">{{ $value->district_name }}</option>
                            @endforeach
                            {{-- way two  --}}
                        </select>
                    </div>
                </div>
            </div>
            <button type="submit"
                class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Update</button>
        </form>
    </div>

</body>

</html>