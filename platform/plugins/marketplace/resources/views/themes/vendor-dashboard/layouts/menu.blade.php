<div>
@foreach (DashboardMenu::getAll('vendor') as $item)
@continue(! $item['name'])
    <div class="dashboard_links_item active">

        <a
        href="{{ $item['url'] }}"
        @class(['active' => $item['active']])
    >
        <x-core::icon :name="$item['icon']" />

        {{ $item['name'] }}
    </a>
    </div>
    @endforeach
</div>
