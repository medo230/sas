<div class="statistics mt-5">
    <div class="row mb-3">

        <div class="col-12 col-sm-6 col-md-4 col-lg-4 ">

            <div class="statistics_items">

                <div class="statistics_items">
                    <svg width="39" height="39" viewBox="0 0 39 39" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M17.5325 16.3681C17.5325 15.4653 18.227 14.8998 19.1695 14.7906V17.9753C19.0703 17.9555 18.981 17.9257 18.8917 17.8959C17.9889 17.5983 17.5325 17.0824 17.5325 16.3681ZM22.4931 22.5589C22.4931 23.5311 21.749 24.176 20.6973 24.2653V20.8425C20.7668 20.8623 20.8362 20.8822 20.8958 20.8921C22.0069 21.1997 22.4931 21.7453 22.4931 22.5589ZM20.7172 27.6682L20.7073 26.4082C23.4256 26.1503 25.1519 24.6522 25.1519 22.291C25.1519 19.8901 23.5348 18.8781 21.5406 18.4515L20.6973 18.2729V14.8105C21.749 14.9791 22.3343 15.7728 22.3641 16.5665H24.9039C24.8642 14.5029 23.2471 12.9354 20.737 12.6675V11.3778H19.1298V12.6576C16.7289 12.8759 14.8439 14.1954 14.8439 16.5764C14.8439 18.8285 16.4709 19.9794 18.3163 20.3861L19.1695 20.5746V24.2653C17.8996 24.0966 17.2349 23.3327 17.1853 22.42H14.5859C14.6058 24.2554 15.836 26.19 19.1199 26.4281L19.11 27.6682H20.7172Z" fill="#4940FF"/>
                        <rect x="0.792969" y="0.965626" width="37.8" height="37.8" rx="5.4" fill="#4940FF" fill-opacity="0.17"/>
                        </svg>
                    <span>{{ __('اجمالى المبيعات') }}</span>
                    <h3 class="mt-4">{{ format_price($data['revenue']['amount']) }}</h3>
                    <p class="mt-4">
                        <span>
                            8.5%
                            <svg width="21" height="13" viewBox="0 0 21 13" fill="none"
                                xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="M14.2109 0.34375L16.5009 2.63375L11.6209 7.51375L7.62094 3.51375L0.210938 10.9338L1.62094 12.3438L7.62094 6.34375L11.6209 10.3438L17.9209 4.05375L20.2109 6.34375V0.34375H14.2109Z"
                                    fill="#00B69B" />
                            </svg>
                        </span>

                        مقارنة بالاسبوع الماضى
                    </p>
                </div>
            </div>

        </div>
        <div class="col-12 col-sm-6 col-md-4 col-lg-4 ">

            <div class="statistics_items">

                <div class="statistics_items">
                    <svg width="39" height="39" viewBox="0 0 39 39" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M13.5117 14.8568C13.5117 16.947 15.2064 18.6415 17.2968 18.6415C19.3873 18.6415 21.0819 16.947 21.0819 14.8568C21.0819 12.7665 19.3873 11.072 17.2968 11.072C15.2064 11.072 13.5117 12.7665 13.5117 14.8568ZM22.972 18.6415C22.972 20.2092 24.243 21.48 25.811 21.48C27.3789 21.48 28.6499 20.2092 28.6499 18.6415C28.6499 17.0738 27.3789 15.8029 25.811 15.8029C24.243 15.8029 22.972 17.0738 22.972 18.6415Z" fill="#4940FF"/>
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M17.2493 20.5339C12.7823 20.5339 9.11734 22.8299 8.75062 27.3457C8.73064 27.5917 9.20102 28.1034 9.4383 28.1034H25.0673C25.7781 28.1034 25.7891 27.5314 25.7781 27.3465C25.5008 22.7037 21.7791 20.5339 17.2493 20.5339ZM25.4047 22.4268C26.5921 24.0081 27.2958 25.9735 27.2958 28.1034H30.9506C31.4639 28.1034 31.4719 27.6744 31.4639 27.5357C31.2657 24.0891 28.6306 22.4597 25.4047 22.4268Z" fill="#4940FF"/>
                        <rect x="0.792969" y="0.965626" width="37.8" height="37.8" rx="5.4" fill="#4940FF" fill-opacity="0.17"/>
                        </svg>
                    <span>{{ __('عدد العملاء') }}</span>
                    <h3 class="mt-4">{{ $data['orders']->count() }}</h3>
                    <p class="mt-4">
                        <span>
                            8.5%
                            <svg width="21" height="13" viewBox="0 0 21 13" fill="none"
                                xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="M14.2109 0.34375L16.5009 2.63375L11.6209 7.51375L7.62094 3.51375L0.210938 10.9338L1.62094 12.3438L7.62094 6.34375L11.6209 10.3438L17.9209 4.05375L20.2109 6.34375V0.34375H14.2109Z"
                                    fill="#00B69B" />
                            </svg>
                        </span>

                        مقارنة بالاسبوع الماضى
                    </p>
                </div>
            </div>

        </div>
        <div class="col-12 col-sm-6 col-md-4 col-lg-4 ">

            <div class="statistics_items">

                <div class="statistics_items">
                    <svg width="39" height="39" viewBox="0 0 39 39" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M11.0706 28.9289H30.204C30.9084 28.9289 31.4795 29.5 31.4795 30.2044C31.4795 30.9089 30.9084 31.48 30.204 31.48H9.79509C9.09062 31.48 8.51953 30.9089 8.51953 30.2044V9.79554C8.51953 9.09107 9.09062 8.51999 9.79509 8.51999C10.4996 8.51999 11.0706 9.09107 11.0706 9.79554V28.9289Z" fill="#4940FF"/>
                        <path d="M15.8233 23.4235C15.3415 23.9374 14.5343 23.9635 14.0203 23.4817C13.5064 22.9998 13.4804 22.1926 13.9622 21.6787L18.7455 16.5765C19.2115 16.0794 19.9858 16.0363 20.5041 16.4786L24.2794 19.7002L29.1982 13.4696C29.6348 12.9167 30.4369 12.8223 30.9898 13.2588C31.5427 13.6953 31.6371 14.4975 31.2006 15.0504L25.4606 22.321C25.0122 22.8889 24.1818 22.9706 23.6314 22.501L19.7741 19.2094L15.8233 23.4235Z" fill="#4940FF"/>
                        <rect x="0.792969" y="0.965626" width="37.8" height="37.8" rx="5.4" fill="#4940FF" fill-opacity="0.17"/>
                        </svg>
                    <span>{{ __('حجم المنتجات') }}</span>
                    <h3 class="mt-4">{{ $totalProducts }}</h3>
                    <p class="mt-4">
                        <span style="color: #F93C65;">
                            8.5%
                            <svg width="21" height="13" viewBox="0 0 21 13" fill="none" xmlns="http://www.w3.org/2000/svg">
                              <path d="M14.2109 12.3438L16.5009 10.0538L11.6209 5.17375L7.62094 9.17375L0.210938 1.75375L1.62094 0.34375L7.62094 6.34375L11.6209 2.34375L17.9209 8.63375L20.2109 6.34375V12.3438H14.2109Z" fill="#F93C65"/>
                              </svg>

                        </span>

                        مقارنة بالاسبوع الماضى
                    </p>
                </div>
            </div>

        </div>
    </div>
</div>

<div class="row mb-3">
    @if (!$totalProducts)
        <div class="col-12">
            <svg style="display: none;" xmlns="http://www.w3.org/2000/svg">
                <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
                    <path
                        d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z" />
                </symbol>
            </svg>
            <div class="alert alert-success" role="alert">
                <h4 class="alert-heading">
                    <svg class="bi flex-shrink-0 me-2" role="img" aria-label="Info:" width="24" height="24">
                        <use xlink:href="#check-circle-fill" />
                    </svg>
                    {{ __('Congratulations on being a vendor at :site_title', ['site_title' => theme_option('site_title')]) }}
                </h4>
                <p>{{ __('Attract your customers with the best products.') }}</p>
                <hr>
                <p class="mb-0">{!! __('Create a new product <a href=":url">here</a>', ['url' => route('marketplace.vendor.products.create')]) !!}</p>
            </div>
        </div>
    @elseif (!$totalOrders)
        <div class="col-12">
            <svg style="display: none;" xmlns="http://www.w3.org/2000/svg">
                <symbol id="info-fill" fill="currentColor" viewBox="0 0 16 16">
                    <path
                        d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z" />
                </symbol>
            </svg>
            <div class="alert alert-info" role="alert">
                <h4 class="alert-heading">
                    <svg class="bi flex-shrink-0 me-2" role="img" aria-label="Info:" width="24" height="24">
                        <use xlink:href="#info-fill" />
                    </svg>
                    {{ __('You have :total product(s) but no orders yet', ['total' => $totalProducts]) }}
                </h4>
                <hr>
                <p class="mb-0">{!! __('View your store <a href=":url">here</a>', ['url' => $user->store->url]) !!}</p>
            </div>
        </div>
    @else
        <div class="col-md-8">
            <x-core::card class="mb-3">
                <x-core::card.header>
                    <div>
                        <x-core::card.title>{{ __('Sales Reports') }}</x-core::card.title>
                        <x-core::card.subtitle>
                            <a href="{{ route('marketplace.vendor.revenues.index') }}">
                                {{ __('Revenues in :label', ['label' => $data['predefinedRange']]) }}
                                <x-core::icon name="ti ti-arrow-right" />
                            </a>
                        </x-core::card.subtitle>
                    </div>
                </x-core::card.header>
                <x-core::table.body>
                    <div id="sales-report-chart">
                        <sales-reports-chart url="{{ route('marketplace.vendor.chart.month') }}"
                            date_from='{{ $data['startDate']->format('Y-m-d') }}'
                            date_to='{{ $data['endDate']->format('Y-m-d') }}'></sales-reports-chart>
                    </div>
                </x-core::table.body>
            </x-core::card>
        </div>

        <div class="col-md-4">
            <x-core::card>
                <x-core::card.header>
                    <div>
                        <x-core::card.title>{{ __('Earnings') }}</x-core::card.title>
                        <x-core::card.subtitle>{{ __('Earnings in :label', ['label' => $data['predefinedRange']]) }}</x-core::card.subtitle>
                    </div>
                </x-core::card.header>
                <x-core::card.body>
                    <div id="revenue-chart">
                        <revenue-chart
                            :data="{{ json_encode([
                                ['label' => __('Revenue'), 'value' => $data['revenue']['amount'], 'color' => '#80bc00'],
                                ['label' => __('Fees'), 'value' => $data['revenue']['fee'], 'color' => '#fcb800'],
                                ['label' => __('Withdrawals'), 'value' => $data['revenue']['withdrawal'], 'color' => '#fc6b00'],
                            ]) }}"></revenue-chart>
                    </div>

                    <div class="row mt-4">
                        <x-core::datagrid.item class="col-6 mb-2">
                            <x-slot:title>
                                <x-core::icon name="ti ti-wallet"></x-core::icon>
                                {{ __('Balance') }}
                            </x-slot:title>
                            {{ format_price($data['revenue']['sub_amount']) }}
                        </x-core::datagrid.item>

                        <x-core::datagrid.item class="col-6 mb-2">
                            <x-slot:title>
                                {{ __('Revenue') }}
                            </x-slot:title>
                            {{ format_price($data['revenue']['sub_amount']) }}
                        </x-core::datagrid.item>

                        <x-core::datagrid.item class="col-6">
                            <x-slot:title>
                                <span data-bs-toggle="tooltip"
                                    data-bs-original-title="{{ __('Includes Completed, Pending, and Processing statuses') }}">
                                    {{ __('Withdrawals') }}
                                </span>
                            </x-slot:title>
                            {{ format_price($data['revenue']['withdrawal']) }}
                        </x-core::datagrid.item>

                        <x-core::datagrid.item class="col-6">
                            <x-slot:title>
                                {{ __('Fees') }}
                            </x-slot:title>
                            {{ format_price($data['revenue']['fee']) }}
                        </x-core::datagrid.item>
                    </div>
                </x-core::card.body>
            </x-core::card>
        </div>
    @endif
</div>




<div class="row">
    @if ($totalOrders)
        <div class="col-12">
            <x-core::card class="mb-3">
                <x-core::card.header>
                    <x-core::card.title>{{ __('Recent Orders') }}</x-core::card.title>
                </x-core::card.header>

                <div class="table-responsive">
                    <x-core::table>
                        <x-core::table.header>
                            <x-core::table.header.cell>{{ __('ID') }}</x-core::table.header.cell>
                            <x-core::table.header.cell>{{ __('Date') }}</x-core::table.header.cell>
                            <x-core::table.header.cell>{{ __('Customer') }}</x-core::table.header.cell>
                            <x-core::table.header.cell>{{ __('Payment') }}</x-core::table.header.cell>
                            <x-core::table.header.cell>{{ __('Status') }}</x-core::table.header.cell>
                            <x-core::table.header.cell>{{ __('Total') }}</x-core::table.header.cell>
                        </x-core::table.header>
                        <x-core::table.body>
                            @forelse ($data['orders'] as $order)
                                <x-core::table.body.row>
                                    <x-core::table.body.cell>
                                        <a href="{{ route('marketplace.vendor.orders.edit', $order->id) }}">
                                            {{ get_order_code($order->id) }}
                                        </a>
                                    </x-core::table.body.cell>
                                    <x-core::table.body.cell>
                                        {{ $order->created_at->translatedFormat('M d, Y') }}
                                    </x-core::table.body.cell>
                                    <x-core::table.body.cell>
                                        <a href="{{ route('marketplace.vendor.orders.edit', $order->id) }}">
                                            {{ $order->user->name ?: $order->address->name }}
                                        </a>
                                    </x-core::table.body.cell>
                                    <x-core::table.body.cell>
                                        {!! BaseHelper::clean($order->payment->status->toHtml()) !!}
                                    </x-core::table.body.cell>
                                    <x-core::table.body.cell>
                                        {!! BaseHelper::clean($order->status->toHtml()) !!}
                                    </x-core::table.body.cell>
                                    <x-core::table.body.cell>
                                        {{ format_price($order->amount) }}
                                    </x-core::table.body.cell>
                                </x-core::table.body.row>
                            @empty
                                <x-core::table.body.row>
                                    <x-core::table.body.cell class="text-center" colspan="6">
                                        {{ __('No orders!') }}
                                    </x-core::table.body.cell>
                                </x-core::table.body.row>
                            @endforelse
                        </x-core::table.body>
                    </x-core::table>
                </div>

                <x-core::card.footer>
                    <a href="{{ route('marketplace.vendor.orders.index') }}">
                        {{ __('View Full Orders') }}
                        <x-core::icon name="ti ti-chevron-right" />
                    </a>
                </x-core::card.footer>
            </x-core::card>
        </div>
    @endif

    @if ($totalProducts)
        <div class="col-12">
            <x-core::card>
                <x-core::card.header>
                    <x-core::card.title>{{ __('Top Selling Products') }}</x-core::card.title>
                </x-core::card.header>

                <div class="table-responsive">
                    <x-core::table>
                        <x-core::table.header>
                            <x-core::table.header.cell>{{ __('ID') }}</x-core::table.header.cell>
                            <x-core::table.header.cell>{{ __('image') }}</x-core::table.header.cell>
                            <x-core::table.header.cell>{{ __('Name') }}</x-core::table.header.cell>
                            <x-core::table.header.cell>{{ __('Status') }}</x-core::table.header.cell>
                            <x-core::table.header.cell>{{ __('Amount') }}</x-core::table.header.cell>
                            <x-core::table.header.cell>{{ __('salary') }}</x-core::table.header.cell>
                            <x-core::table.header.cell>{{ __('Created at') }}</x-core::table.header.cell>
                        </x-core::table.header>
                        <x-core::table.body>
                            @forelse ($data['products'] as $product)
                                <x-core::table.body.row>
                                    <x-core::table.body.cell>
                                        {{ $product->id }}
                                    </x-core::table.body.cell>
                                    <x-core::table.body.cell>
                                        <a href="{{ route('marketplace.vendor.products.edit', $product->id) }}">
                                            {{ $product->name }}
                                        </a>
                                    </x-core::table.body.cell>
                                    <x-core::table.body.cell>
                                        {!! BaseHelper::clean($product->price_in_table) !!}
                                    </x-core::table.body.cell>
                                    <x-core::table.body.cell>
                                        {!! BaseHelper::clean($product->status->toHtml()) !!}
                                    </x-core::table.body.cell>
                                    <x-core::table.body.cell>
                                        {{ $product->created_at->translatedFormat('M d, Y') }}
                                    </x-core::table.body.cell>
                                </x-core::table.body.row>
                            @empty
                                <x-core::table.body.row>
                                    <x-core::table.body.cell class="text-center" colspan="6">
                                        {{ __('No products!') }}
                                    </x-core::table.body.cell>
                                </x-core::table.body.row>
                            @endforelse
                        </x-core::table.body>
                    </x-core::table>
                </div>

                <x-core::card.footer>
                    <a href="{{ route('marketplace.vendor.products.index') }}">
                        {{ __('View Full Products') }}
                        <x-core::icon name="ti ti-chevron-right" />
                    </a>
                </x-core::card.footer>
            </x-core::card>
        </div>
    @endif
</div>
