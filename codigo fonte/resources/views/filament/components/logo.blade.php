@if(!empty(\Helper::getSetting()))
    <div>
        <img src="{{ asset('storage/'. \Helper::getSetting()['software_logo_white']) }}" alt="" class="show-in-dark h-8">
        <img src="{{ asset('storage/'. \Helper::getSetting()['software_logo_black']) }}" alt="" class="show-in-light h-8">
    </div>
@endif
