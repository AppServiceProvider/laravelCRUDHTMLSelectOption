<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    @vite('resources/css/app.css')
</head>

<body>
    <div class="container mx-auto">
        <form class="w-full max-w-lg m-auto" action="{{ route('donor.store') }}" method="post">
            @csrf
            @method('POST')
            <div class="flex flex-wrap -mx-3 mb-6 pt-9">
                <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
                    <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
                        for="grid-first-name">
                        First Name
                    </label>
                    <input name="first_name"
                        class="appearance-none block w-full bg-gray-200 text-gray-700 border rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
                        id="grid-first-name" type="text">
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
                        id="grid-last-name" type="text">
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
                            <option value="">Select Blood</option>
                            {{-- way one  --}}
                            {{-- @foreach ($citys as $value)
                                <option value="{{ $value->name }}">{{ $value->name }}</option>
                            @endforeach --}}
                            {{-- way onae  --}}

                            
                            {{-- way two using elequent ORM database table --}}
                            @foreach ($districts as $value)
                                <option value="{{ $value->id }}">{{ $value->district_name }}</option>
                            @endforeach
                            {{-- way two  --}}



                            {{-- <option value="a+">A Possitive</option>
                            <option value="a-">A Negative</option>
                            <option value="ab+">Ab Possitive</option>
                            <option value="ab-">Ab Negative</option>
                            <option value="b+">B Possitive</option>
                            <option value="b-">B Negative</option>
                            <option value="o+">O Possitive</option>
                            <option value="o-">O Negative</option> --}}
                        </select>
                    </div>
                </div>
            </div>
            <button type="submit"
                class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Save</button>
        </form>
    </div>

 </body>

</html>