
<header class="header header--mobile" data-sticky="true">
    <!-- navbar in responsive  -->

  <div class="nav_res">
    <button class="azhr_btn btn ">
      <i class="fa-solid fa-bars "style="font-size: x-large;" ></i></button>

    <div class="navbar_res_items">

      <div class="close">
        <button class="close_btn btn ">
      <i class="fa-solid fa-xmark "style="font-size: x-large;"></i>
        </button>
      </div>
      <!-- <img src="" > -->
      <img src="img/logo.png" class="logo" alt="Your Logo" height="60" >


        <ul class="d-flex  mt-5" style="list-style: none; flex-direction: column;" >

        <li class="nav-item d-flex align-items-center justify-content-end" >
          <a class="nav-link" href="#" >
            <!-- <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
                <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6m2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0m4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4m-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10s-3.516.68-4.168 1.332c-.678.678-.83 1.418-.832 1.664z"/>
            </svg> -->
        </a>
            <div style="font-size: small;">
               أهلاً بك!

               <br>
               <a href="#" style="text-decoration: underline;">تسجيل الدخول</a>
                 <br>
               أو

               <br>
              <a href="#" style="text-decoration: underline;"> إنشاء حساب</a>
            </div>

        </li>


        <li class="nav-item mt-3">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bell ms-3" viewBox="0 0 16 16">
                  <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2M8 1.918l-.797.161A4 4 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4 4 0 0 0-3.203-3.92zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5 5 0 0 1 13 6c0 .88.32 4.2 1.22 6"/>
              </svg>

             <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart2" viewBox="0 0 16 16">
                <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5M3.14 5l1.25 5h8.22l1.25-5zM5 13a1 1 0 1 0 0 2 1 1 0 0 0 0-2m-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0m9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2m-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0"/>
            </svg>

      </li>




          <li class="nav-item">
            <div class="custom-dropdown" >
                <button class="dropdown_btn btn">
                    AR/USD  <i class="fa-solid fa-chevron-down"></i>
                </button>


            </div>
        </li>
          <!-- Add more icon links as needed -->
      </ul>

    </div>

  </div>

    <div class="header__top">
        <div class="header__left">
            <p>{{ theme_option('welcome_message') }}</p>
        </div>
        @if (is_plugin_active('ecommerce'))
            <div class="header__right">
                <ul class="navigation__extra">
                    @if (EcommerceHelper::isOrderTrackingEnabled())
                        <li><a href="{{ route('public.orders.tracking') }}">{{ __('Track your order') }}</a></li>
                    @endif
                    @php $currencies = get_all_currencies(); @endphp
                    @if (count($currencies) > 1)
                        <li>
                            <div class="ps-dropdown"><a href="#"><span>{{ get_application_currency()->title }}</span></a>
                                <ul class="ps-dropdown-menu">
                                    @foreach ($currencies as $currency)
                                        <li><a href="{{ route('public.change-currency', $currency->title) }}"><span>{{ $currency->title }}</span></a></li>
                                    @endforeach
                                </ul>
                            </div>
                        </li>
                    @endif
                    @if (is_plugin_active('language'))
                        {!! Theme::partial('language-switcher') !!}
                    @endif
                </ul>
            </div>
        @endif
    </div>
    <div class="navigation--mobile">
        <div class="navigation__left"><a class="ps-logo" href="{{ route('public.index') }}"><img src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" alt="{{ theme_option('site_title') }}"></a></div>
        @if (is_plugin_active('ecommerce'))
            <div class="navigation__right">
                <div class="header__actions">
                    {!! apply_filters('before_theme_header_mobile_actions', null) !!}
                    <div class="ps-cart--mini">
                        <a class="header__extra btn-shopping-cart" href="javascript:void(0)">
                            <i class="icon-bag2"></i><span><i>{{ Cart::instance('cart')->count() }}</i></span>
                        </a>
                        <div class="ps-cart--mobile">
                            {!! Theme::partial('cart') !!}
                        </div>
                    </div>
                    {!! apply_filters('after_theme_header_mobile_actions', null) !!}
                    <div class="ps-block--user-header">
                        <div class="ps-block__left"><a href="{{ route('customer.overview') }}"><i class="icon-user"></i></a></div>
                    </div>
                </div>
            </div>
        @endif
    </div>
    @if (is_plugin_active('ecommerce'))
        <div class="ps-search--mobile">
            <form class="ps-form--search-mobile" action="{{ route('public.products') }}" data-ajax-url="{{ route('public.ajax.search-products') }}" method="get">
                <div class="form-group--nest position-relative">
                    <input class="form-control input-search-product" name="q" value="{{ BaseHelper::stringify(request()->query('q')) }}" type="text" autocomplete="off" placeholder="{{ __('Search something...') }}">
                    <div class="spinner-icon">
                        <i class="fa fa-spin fa-spinner"></i>
                    </div>
                    <button type="submit"><i class="icon-magnifier"></i></button>
                    <div class="ps-panel--search-result"></div>
                </div>
            </form>
        </div>
    @endif
</header>
