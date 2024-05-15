<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="csrf-token" content="{{ csrf_token() }}">

    {!! BaseHelper::googleFonts(
        'https://fonts.googleapis.com/css2?family=Roboto&display=swap' .
            urlencode(theme_option('primary_font', 'Work Sans')) .
            ':wght@300;400;500;600;700&display=swap',
    ) !!}

    <style>
        :root {
            --color-1st: {{ theme_option('primary_color', '#fcb800') }};
            --primary-color: {{ theme_option('primary_color', '#fcb800') }};
            --color-2nd: {{ theme_option('secondary_color', '#222222') }};
            --secondary-color: {{ theme_option('secondary_color', '#222222') }};
            --primary-font: '{{ theme_option('primary_font', 'Work Sans') }}', sans-serif;
            --button-text-color: {{ theme_option('button_text_color', '#000') }};
            --header-text-color: {{ theme_option('header_text_color', '#000') }};
            --header-button-background-color: {{ theme_option('header_button_background_color', '#000') }};
            --header-button-text-color: {{ theme_option('header_button_text_color', '#fff') }};
            --header-text-hover-color: {{ theme_option('header_text_hover_color', '#fff') }};
            --header-text-accent-color: {{ theme_option('header_text_accent_color', '#222222') }};
            --header-diliver-border-color: {{ BaseHelper::hexToRgba(theme_option('header_text_color', '#000'), 0.15) }};
        }
    </style>
    <link rel="stylesheet" href="{{ asset('web/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('web/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('web/css/media.css') }}">
    <link rel="stylesheet" href="{{ asset('web/css/rtl.css') }}">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700&display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Cairo&display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto&display=swap">



    @php
        Theme::asset()->remove('language-css');
        Theme::asset()->container('footer')->remove('language-public-js');
        Theme::asset()->container('footer')->remove('simple-slider-owl-carousel-css');
        Theme::asset()->container('footer')->remove('simple-slider-owl-carousel-js');
        Theme::asset()->container('footer')->remove('simple-slider-css');
        Theme::asset()->container('footer')->remove('simple-slider-js');
    @endphp

    {!! Theme::header() !!}
</head>

<body @if (Theme::get('pageId')) id="{{ Theme::get('pageId') }}" @endif
    @if (BaseHelper::siteLanguageDirection() == 'rtl') dir="rtl" @endif>
    {!! apply_filters(THEME_FRONT_BODY, null) !!}
    <div id="alert-container"></div>

    <!-- Home section -->
    {!! Theme::get('topHeader') !!}
    <!--NAVBar start -->
    <header class="header_section" data-sticky="{{ Theme::get('stickyHeader', 'true') }}">
        <!-- navbar in responsive  -->

        <div class="nav_res">
            <button class="azhr_btn btn ">
                <i class="fa-solid fa-bars "style="font-size: x-large;"></i></button>

            <div class="navbar_res_items">

                <div class="close">
                    <button class="close_btn btn ">
                        <i class="fa-solid fa-xmark "style="font-size: x-large;"></i>
                    </button>
                </div>
                <a class="navbar-brand" href="{{ route('public.index') }}">
                    <img src="{{ asset('web/img/logo.png') }}" class="logo" alt="Your Logo" height="60">
                </a>

                <ul class="d-flex  mt-5" style="list-style: none; flex-direction: column;">

                    <li class="nav-item d-flex align-items-center justify-content-end">

                        <div style="font-size: small;">
                            أهلاً بك!

                            @if (auth('customer')->check())
                                <a href="{{ route('customer.overview') }}"
                                    class="customer-name">{{ auth('customer')->user()->name }}</a>
                                <a href="{{ route('customer.logout') }}">{{ __('Logout') }}</a>
                            @else
                                <a href="{{ route('customer.login') }}">{{ __('تسجيل الدخول') }}</a> @csrf  <a
                                    href="{{ route('customer.register') }}">{{ __('تسجيل الخروج') }}</a>
                            @endif
                            </span>
                        </div>

                    </li>


                    <li class="nav-item mt-3">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-bell ms-3" viewBox="0 0 16 16">
                            <path
                                d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2M8 1.918l-.797.161A4 4 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4 4 0 0 0-3.203-3.92zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5 5 0 0 1 13 6c0 .88.32 4.2 1.22 6" />
                        </svg>

                        <li class="nav-item mt-4">
                            <a href="{{ route('public.cart') }}" style="color: #212529;text-decoration: none">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                    fill="currentColor" class="bi bi-cart2" viewBox="0 0 16 16">
                                    <path
                                        d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5M3.14 5l1.25 5h8.22l1.25-5zM5 13a1 1 0 1 0 0 2 1 1 0 0 0 0-2m-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0m9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2m-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0" />
                                </svg>
                                <i>{{ Cart::instance('cart')->count() }}</i>
                            </a>
                        </li>

                    </li>





                    <!-- Add more icon links as needed -->
                </ul>
                @if (is_plugin_active('ecommerce'))
                <ul class="navigation__extra">
                    @php $currencies = get_all_currencies(); @endphp
                    @if (count($currencies) > 1)
                        <li>
                            <div class="ps-dropdown">
                                <a
                                    href="{{ route('public.change-currency', get_application_currency()->title) }}"><span>{{ get_application_currency()->title }}</span></a>
                                <ul class="">
                                    @foreach ($currencies as $currency)
                                        @if ($currency->id !== get_application_currency_id())
                                            <li><a
                                                    href="{{ route('public.change-currency', $currency->title) }}"><span>{{ $currency->title }}</span></a>
                                            </li>
                                        @endif
                                    @endforeach
                                </ul>
                            </div>
                        </li>
                    @endif
                    @if (is_plugin_active('language'))
                        {!! Theme::partial('language-switcher') !!}
                    @endif
                </ul>


                @endif
            </div>


        </div>
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container">


                <div class="collapse navbar-collapse justify-content-start  " id="navbarNav">
                    <ul class="navbar-nav">

                        <li class="nav-item d-flex align-items-center " style="justify-content: center">
                            <a class="nav-link" href="#">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                    fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
                                    <path
                                        d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6m2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0m4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4m-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10s-3.516.68-4.168 1.332c-.678.678-.83 1.418-.832 1.664z" />
                                </svg>
                            </a>
                            <div style="font-size: small;">
                                أهلاً بك!

                                @if (auth('customer')->check())
                                    <a href="{{ route('customer.overview') }}"
                                        class="customer-name">{{ auth('customer')->user()->name }}</a>
                                    <a href="{{ route('customer.logout') }}">{{ __('Logout') }}</a>
                                @else
                                    <a href="{{ route('customer.login') }}">{{ __('تسجيل الدخول') }}</a> @csrf <a
                                        href="{{ route('customer.register') }}">{{ __('تسجيل الخروج') }}</a>
                                @endif
                                </span>
                            </div>

                        </li>


                        <li class="nav-item mt-3">
                            <a class="nav-link" href="#">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                    fill="currentColor" class="bi bi-bell" viewBox="0 0 16 16">
                                    <path
                                        d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2M8 1.918l-.797.161A4 4 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4 4 0 0 0-3.203-3.92zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5 5 0 0 1 13 6c0 .88.32 4.2 1.22 6" />
                                </svg>
                            </a>
                        </li>

                        <li class="nav-item mt-4">
                            <a href="{{ route('public.cart') }}" style="color: #212529;text-decoration: none">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                    fill="currentColor" class="bi bi-cart2" viewBox="0 0 16 16">
                                    <path
                                        d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5M3.14 5l1.25 5h8.22l1.25-5zM5 13a1 1 0 1 0 0 2 1 1 0 0 0 0-2m-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0m9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2m-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0" />
                                </svg>
                                <i>{{ Cart::instance('cart')->count() }}</i>
                            </a>
                        </li>




                        @if (is_plugin_active('ecommerce'))
                            <ul class="navigation__extra">
                                @php $currencies = get_all_currencies(); @endphp
                                @if (count($currencies) > 1)
                                    <li>
                                        <div class="ps-dropdown">
                                            <a
                                                href="{{ route('public.change-currency', get_application_currency()->title) }}"><span>{{ get_application_currency()->title }}</span></a>
                                            <ul class="ps-dropdown-menu">
                                                @foreach ($currencies as $currency)
                                                    @if ($currency->id !== get_application_currency_id())
                                                        <li><a
                                                                href="{{ route('public.change-currency', $currency->title) }}"><span>{{ $currency->title }}</span></a>
                                                        </li>
                                                    @endif
                                                @endforeach
                                            </ul>
                                        </div>
                                    </li>
                                @endif
                                @if (is_plugin_active('language'))
                                    {!! Theme::partial('language-switcher') !!}
                                @endif
                            </ul>
                        @endif
                        <!-- Add more icon links as needed -->
                    </ul>
                </div>

                <a class="navbar-brand" href="{{ route('public.index') }}">
                    <img src="{{ asset('web/img/logo.png') }}" class="logo" alt="Your Logo" height="60">
                </a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

            </div>
        </nav>
        <!--NAVBar end -->


        <!--header start -->
        <div class="container-fluid custom-container  ">
            <div class="background"></div>
            <div class="content">
                <div class="container">
                    <!-- search section  -->
                    <div id="search">
                        <!-- search  -->
                        <div class="search">

                            <!-- Show_Prices -->
                            <div class="Show_Prices ms-3">
                                <svg width="20" height="20" viewBox="0 0 20 20" fill="none"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path
                                        d="M16.2891 1.25977H17.5V20H2.5V1.25977H3.73047V0H4.98047V1.25977H7.5V0H8.75V1.25977H11.2695V0H12.5195V1.25977H15.0391V0H16.2891V1.25977ZM16.25 18.75V2.50977H3.75V18.75H16.25ZM13.75 5.00977V6.25977H6.25V5.00977H13.75ZM6.25 16.2695V15.0195H13.75V16.2695H6.25ZM6.25 11.2598V10.0098H13.75V11.2598H6.25Z"
                                        fill="white" />
                                </svg>

                                <a href="/test"> طلب عرض اسعار</a>
                            </div>
                            <!-- search content -->
                            <div class="header__center">
                                <form class="ps-form--quick-search" action="{{ route('public.products') }}"
                                    data-ajax-url="{{ route('public.ajax.search-products') }}" method="get">
                                    <div class="form-group--icon">
                                        <div class="product-cat-label">{{ __('All') }}</div>
                                        <select class="form-control product-category-select" name="categories[]">
                                            <option value="0">{{ __('All') }}</option>
                                            {!! ProductCategoryHelper::renderProductCategoriesSelect() !!}
                                        </select>
                                    </div>
                                    <input class="form-control input-search-product" name="q" type="text"
                                        placeholder="{{ __("I'm shopping for...") }}" autocomplete="off">
                                    <div class="spinner-icon">
                                        <i class="fa fa-spin fa-spinner"></i>
                                    </div>
                                    <button type="submit">{{ __('Search') }}</button>
                                    <div class="ps-panel--search-result"></div>
                                </form>

                            </div>
                        </div>


                        <!-- Most searched products -->

                        <div class="Most_searched ">
                            <span> منتجات اكثر بحثا : </span>

                            <span class="Most_searched_products">مولد كهربى</span>
                            <span class="Most_searched_products"> فوانيس رمضان </span>
                            <span class="Most_searched_products"> شنط نسائية</span>
                            <span class="Most_searched_products">ايفون 15 برو ماكس</span>

                        </div>
                    </div>


                    <div class="row" style="margin-top: 100px;">



                        <div class="headbottomright col-6 d-flex justify-content-start" style="font-size: 14px;">

                            <div class="btn-group dropup">
                                <button type="button" class="btn btn-secondary dropdown-toggle"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    جميع الفئات
                                </button>
                                <div class="all dropdown-menu dropdown-menu-up">
                                    <div class="container">
                                        <div class="row ">




                                          <div class="col-4 second">
                                            <h6>الغذاء و الزراعة</h6>

                                            {!! ProductCategoryHelper::renderProductCategoriesSelect() !!}


                                            <p style="text-decoration: underline; color: #015B93 ; font-size: 20px;">جميع الفئات </p>

                                           </div>
                                           <div class="col-4 ">
                                            <div class="row ">

                                              <div class="col-md-4 col-sm-2">
                                                <div class="gray-box-item">

                                                  <div class="gray-box-item">
                                                      <svg width="32" height="33" viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                          <g clip-path="url(#clip0_2145_5203)">
                                                          <path d="M17.1034 20.2743H16C16 17.226 18.469 14.757 21.5172 14.757H22.6207C22.6207 17.8053 20.1517 20.2743 17.1034 20.2743Z" fill="#6A9923"/>
                                                          <path d="M17.1034 12.5501H16C16 9.50185 18.469 7.03288 21.5172 7.03288H22.6207C22.6207 10.0812 20.1517 12.5501 17.1034 12.5501Z" fill="#6A9923"/>
                                                          <path d="M16 4.82598H17.1034C19.2345 4.82598 20.9655 3.09495 20.9655 0.963913H19.8621C17.731 0.963913 16 2.69495 16 4.82598Z" fill="#6A9923"/>
                                                          <path d="M9.41379 21.7984L9.37931 21.7777L5.51034 17.4812C4.93793 16.8467 3.95862 16.7984 3.31724 17.3708L3.31034 17.3777V9.33633C3.33103 8.43289 2.64828 7.66737 1.74483 7.58461C0.834483 7.53633 0.0482759 8.23289 0 9.15013C0 9.17771 0 9.2122 0 9.23978V19.6812C0 20.4329 0.193103 21.1708 0.558621 21.826L5.51724 30.757V32.9639H13.2414V28.3984C13.2414 25.6743 11.7793 23.1501 9.41379 21.7984Z" fill="#F2BB80"/>
                                                          <path d="M15.999 25.7915C15.6955 25.7915 15.4473 25.5432 15.4473 25.2398V4.27426C15.4473 3.97081 15.6955 3.72253 15.999 3.72253C16.3024 3.72253 16.5507 3.97081 16.5507 4.27426V25.2398C16.5507 25.5432 16.3024 25.7915 15.999 25.7915Z" fill="#88B337"/>
                                                          <path d="M9.37891 14.757H10.4824C13.5306 14.757 15.9996 17.226 15.9996 20.2743H14.8961C11.8479 20.2743 9.37891 17.8053 9.37891 14.757Z" fill="#88B337"/>
                                                          <path d="M9.37891 7.03288H10.4824C13.5306 7.03288 15.9996 9.50185 15.9996 12.5501H14.8961C11.8479 12.5501 9.37891 10.0812 9.37891 7.03288Z" fill="#88B337"/>
                                                          <path d="M15.9987 4.82598H14.8953C12.7642 4.82598 11.0332 3.09495 11.0332 0.963913H12.1367C14.2677 0.963913 15.9987 2.69495 15.9987 4.82598Z" fill="#88B337"/>
                                                          <path d="M7.68314 25.0881C7.52451 25.0881 7.37969 25.026 7.27624 24.9087L2.759 19.9363C2.00038 19.1018 2.03486 17.826 2.82796 17.0329C3.04865 16.8191 3.39348 16.826 3.60727 17.0467C3.81417 17.2605 3.81417 17.5984 3.60727 17.8122C3.22796 18.1915 3.21417 18.7984 3.57279 19.1984L8.09003 24.1708C8.29693 24.3984 8.27624 24.7432 8.05555 24.9501C7.9521 25.0398 7.82107 25.0881 7.68314 25.0881Z" fill="#E8A16D"/>
                                                          <path d="M18.7578 28.3984V32.9639H26.482V30.757L31.4406 21.826C31.8061 21.1708 31.9992 20.4329 31.9992 19.6812V9.33633C32.0199 8.43289 31.3371 7.66737 30.4337 7.58461C29.5233 7.53633 28.744 8.23289 28.6888 9.15013C28.6888 9.17771 28.6888 9.2122 28.6888 9.23978V17.3777C28.0544 16.7984 27.0751 16.8398 26.4957 17.4743L26.4888 17.4812L22.6199 21.7777L22.5854 21.7984C20.2199 23.1501 18.7578 25.6743 18.7578 28.3984Z" fill="#F2BB80"/>
                                                          <path d="M24.3163 25.0881C24.4749 25.0881 24.6197 25.026 24.7232 24.9087L29.2404 19.9363C29.999 19.1018 29.9646 17.826 29.1715 17.0329C28.9508 16.8191 28.6059 16.826 28.3922 17.0467C28.1853 17.2605 28.1853 17.5984 28.3922 17.8122C28.7715 18.1915 28.7853 18.7984 28.4266 19.1984L23.9094 24.1708C23.7025 24.3984 23.7232 24.7432 23.9439 24.9501C24.0473 25.0398 24.1784 25.0881 24.3163 25.0881Z" fill="#E8A16D"/>
                                                          </g>
                                                          <defs>
                                                          <clipPath id="clip0_2145_5203">
                                                          <rect width="32" height="32" fill="white" transform="translate(0 0.963913)"/>
                                                          </clipPath>
                                                          </defs>
                                                          </svg>
                                                                                                                    <p>الغذاء</p>

                                                  </div>
                                                </div>


                                              </div>


                                              <div class="col-md-4 col-sm-2">
                                                <div class="gray-box-item">

                                                  <div class="gray-box-item">
                                                      <svg width="32" height="33" viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                          <g clip-path="url(#clip0_2145_5181)">
                                                          <path d="M0.55 15.9239H8.275C8.58125 15.9239 8.825 16.1739 8.825 16.4739V20.8864C8.825 21.1927 8.575 21.4364 8.275 21.4364H0.55C0.24375 21.4364 0 21.1864 0 20.8864V16.4739C0 16.1677 0.25 15.9239 0.55 15.9239Z" fill="#C2615F"/>
                                                          <path d="M13.282 15.9239H9.38203C9.07578 15.9239 8.83203 16.1739 8.83203 16.4739V20.8864C8.83203 21.1927 9.08203 21.4364 9.38203 21.4364H17.107C17.4133 21.4364 17.657 21.1864 17.657 20.8864V17.2302L13.282 15.9239Z" fill="#F0785A"/>
                                                          <path d="M23.7938 15.9239H25.9312C26.2375 15.9239 26.4813 16.1739 26.4813 16.4739V20.8864C26.4813 21.1927 26.2312 21.4364 25.9312 21.4364H18.2062C17.9 21.4364 17.6562 21.1864 17.6562 20.8864V17.2302L23.7938 15.9239Z" fill="#C2615F"/>
                                                          <path d="M4.96808 21.4427H12.6868C12.9931 21.4427 13.2368 21.6927 13.2368 21.9927V26.4052C13.2368 26.7114 12.9868 26.9552 12.6868 26.9552H4.96808C4.66183 26.9552 4.41808 26.7052 4.41808 26.4052V21.9927C4.41183 21.6864 4.66183 21.4427 4.96808 21.4427Z" fill="#CC4B4C"/>
                                                          <path d="M13.7941 21.4427H21.5191C21.8254 21.4427 22.0691 21.6927 22.0691 21.9927V26.4052C22.0691 26.7114 21.8191 26.9552 21.5191 26.9552H13.7941C13.4879 26.9552 13.2441 26.7052 13.2441 26.4052V21.9927C13.2441 21.6864 13.4879 21.4427 13.7941 21.4427Z" fill="#802F34"/>
                                                          <path d="M22.6184 21.4427H30.3434C30.6496 21.4427 30.8934 21.6927 30.8934 21.9927V26.4052C30.8934 26.7114 30.6496 26.9552 30.3434 26.9552H22.6184C22.3121 26.9552 22.0684 26.7052 22.0684 26.4052V21.9927C22.0684 21.6864 22.3184 21.4427 22.6184 21.4427Z" fill="#CC4B4C"/>
                                                          <path d="M0.55 26.9552H8.275C8.58125 26.9552 8.825 27.1989 8.825 27.5052V31.9177C8.825 32.2239 8.575 32.4677 8.275 32.4677H0.55C0.25 32.4739 0 32.2239 0 31.9239V27.5114C0 27.2052 0.25 26.9552 0.55 26.9552Z" fill="#C2615F"/>
                                                          <path d="M9.38203 26.9552H17.107C17.4133 26.9552 17.657 27.1989 17.657 27.5052V31.9177C17.657 32.2239 17.407 32.4677 17.107 32.4677H9.38203C9.07578 32.4677 8.83203 32.2239 8.83203 31.9177V27.5052C8.83203 27.2052 9.07578 26.9552 9.38203 26.9552Z" fill="#F0785A"/>
                                                          <path d="M18.2062 26.9552H25.9312C26.2375 26.9552 26.4813 27.1989 26.4813 27.5052V31.9177C26.4813 32.2239 26.2312 32.4677 25.9312 32.4677H18.2062C17.9 32.4677 17.6562 32.2239 17.6562 31.9177V27.5052C17.6562 27.2052 17.9 26.9552 18.2062 26.9552Z" fill="#C2615F"/>
                                                          <path d="M24.418 15.7927L13.4743 18.1177C13.1993 18.1677 12.9118 18.0614 12.743 17.8364C12.5743 17.6114 12.5493 17.3052 12.6743 17.0552L17.968 7.19893C18.0868 6.99268 18.3055 6.85518 18.543 6.84268C18.7868 6.83018 19.0118 6.94268 19.1493 7.14268L24.7993 14.6677C24.9493 14.8552 24.993 15.1052 24.918 15.3364C24.843 15.5614 24.6493 15.7364 24.418 15.7927Z" fill="#BDC3C7"/>
                                                          <path d="M19.2626 13.4927C19.0251 13.4927 18.8126 13.3427 18.7376 13.1177C18.6626 12.8927 18.7376 12.6427 18.9314 12.4989L23.2439 9.26767C23.4626 9.10517 23.5814 8.84892 23.5626 8.58017L23.5064 7.58642C23.4689 6.94892 23.7564 6.33642 24.2689 5.95517L25.8626 4.76142C26.0189 4.64267 26.2314 4.61767 26.4126 4.69267C26.5939 4.76767 26.7189 4.93642 26.7439 5.13642C26.7689 5.33017 26.6876 5.52392 26.5251 5.64267L24.9314 6.83642C24.7126 6.99892 24.5939 7.25517 24.6126 7.53017L24.6689 8.52392C24.7064 9.16142 24.4189 9.77392 23.9064 10.1552L19.5939 13.3864C19.5001 13.4552 19.3814 13.4927 19.2626 13.4927Z" fill="#95A5A5"/>
                                                          <path d="M25.8191 3.78017L29.9316 0.698919C30.4191 0.336419 31.1128 0.430169 31.4753 0.917669L31.7816 1.32392C32.1503 1.81142 32.0503 2.50517 31.5628 2.86767L27.4503 5.94892C27.2066 6.13017 26.8628 6.08017 26.6753 5.83642L25.7066 4.54267C25.5253 4.30517 25.5753 3.96142 25.8191 3.78017Z" fill="#F29C1F"/>
                                                          <path d="M2.20625 18.1302C2.20625 18.4364 1.95625 18.6802 1.65625 18.6802H0V17.5739H1.65625C1.9625 17.5802 2.20625 17.8239 2.20625 18.1302Z" fill="#FB7B76"/>
                                                          <path d="M6.06875 18.6802H3.8625C3.55625 18.6802 3.3125 18.4302 3.3125 18.1302C3.3125 17.8302 3.5625 17.5802 3.8625 17.5802H6.06875C6.375 17.5802 6.61875 17.8302 6.61875 18.1302C6.61875 18.4302 6.375 18.6802 6.06875 18.6802Z" fill="#FB7B76"/>
                                                          </g>
                                                          <defs>
                                                          <clipPath id="clip0_2145_5181">
                                                          <rect width="32" height="32" fill="white" transform="translate(0 0.473923)"/>
                                                          </clipPath>
                                                          </defs>
                                                          </svg>                                                          <p>مقاولات</p>

                                                  </div>
                                                </div>


                                              </div>

                                              <div class="col-md-4 col-sm-2">
                                                <div class="gray-box-item">

                                                  <div class="gray-box-item">
                                                      <svg width="32" height="33" viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                          <g opacity="0.6" clip-path="url(#clip0_2145_5148)">
                                                          <g clip-path="url(#clip1_2145_5148)">
                                                          <path d="M0.55 15.9239H8.275C8.58125 15.9239 8.825 16.1739 8.825 16.4739V20.8864C8.825 21.1927 8.575 21.4364 8.275 21.4364H0.55C0.24375 21.4364 0 21.1864 0 20.8864V16.4739C0 16.1677 0.25 15.9239 0.55 15.9239Z" fill="#C2615F"/>
                                                          <path d="M13.282 15.9239H9.38203C9.07578 15.9239 8.83203 16.1739 8.83203 16.4739V20.8864C8.83203 21.1927 9.08203 21.4364 9.38203 21.4364H17.107C17.4133 21.4364 17.657 21.1864 17.657 20.8864V17.2302L13.282 15.9239Z" fill="#F0785A"/>
                                                          <path d="M23.7938 15.9239H25.9312C26.2375 15.9239 26.4813 16.1739 26.4813 16.4739V20.8864C26.4813 21.1927 26.2312 21.4364 25.9312 21.4364H18.2062C17.9 21.4364 17.6562 21.1864 17.6562 20.8864V17.2302L23.7938 15.9239Z" fill="#C2615F"/>
                                                          <path d="M4.96808 21.4427H12.6868C12.9931 21.4427 13.2368 21.6927 13.2368 21.9927V26.4052C13.2368 26.7114 12.9868 26.9552 12.6868 26.9552H4.96808C4.66183 26.9552 4.41808 26.7052 4.41808 26.4052V21.9927C4.41183 21.6864 4.66183 21.4427 4.96808 21.4427Z" fill="#CC4B4C"/>
                                                          <path d="M13.7941 21.4427H21.5191C21.8254 21.4427 22.0691 21.6927 22.0691 21.9927V26.4052C22.0691 26.7114 21.8191 26.9552 21.5191 26.9552H13.7941C13.4879 26.9552 13.2441 26.7052 13.2441 26.4052V21.9927C13.2441 21.6864 13.4879 21.4427 13.7941 21.4427Z" fill="#802F34"/>
                                                          <path d="M22.6184 21.4427H30.3434C30.6496 21.4427 30.8934 21.6927 30.8934 21.9927V26.4052C30.8934 26.7114 30.6496 26.9552 30.3434 26.9552H22.6184C22.3121 26.9552 22.0684 26.7052 22.0684 26.4052V21.9927C22.0684 21.6864 22.3184 21.4427 22.6184 21.4427Z" fill="#CC4B4C"/>
                                                          <path d="M0.55 26.9552H8.275C8.58125 26.9552 8.825 27.1989 8.825 27.5052V31.9177C8.825 32.2239 8.575 32.4677 8.275 32.4677H0.55C0.25 32.4739 0 32.2239 0 31.9239V27.5114C0 27.2052 0.25 26.9552 0.55 26.9552Z" fill="#C2615F"/>
                                                          <path d="M9.38203 26.9552H17.107C17.4133 26.9552 17.657 27.1989 17.657 27.5052V31.9177C17.657 32.2239 17.407 32.4677 17.107 32.4677H9.38203C9.07578 32.4677 8.83203 32.2239 8.83203 31.9177V27.5052C8.83203 27.2052 9.07578 26.9552 9.38203 26.9552Z" fill="#F0785A"/>
                                                          <path d="M18.2062 26.9552H25.9312C26.2375 26.9552 26.4813 27.1989 26.4813 27.5052V31.9177C26.4813 32.2239 26.2312 32.4677 25.9312 32.4677H18.2062C17.9 32.4677 17.6562 32.2239 17.6562 31.9177V27.5052C17.6562 27.2052 17.9 26.9552 18.2062 26.9552Z" fill="#C2615F"/>
                                                          <path d="M24.418 15.7927L13.4743 18.1177C13.1993 18.1677 12.9118 18.0614 12.743 17.8364C12.5743 17.6114 12.5493 17.3052 12.6743 17.0552L17.968 7.19893C18.0868 6.99268 18.3055 6.85518 18.543 6.84268C18.7868 6.83018 19.0118 6.94268 19.1493 7.14268L24.7993 14.6677C24.9493 14.8552 24.993 15.1052 24.918 15.3364C24.843 15.5614 24.6493 15.7364 24.418 15.7927Z" fill="#BDC3C7"/>
                                                          <path d="M19.2626 13.4927C19.0251 13.4927 18.8126 13.3427 18.7376 13.1177C18.6626 12.8927 18.7376 12.6427 18.9314 12.4989L23.2439 9.26767C23.4626 9.10517 23.5814 8.84892 23.5626 8.58017L23.5064 7.58642C23.4689 6.94892 23.7564 6.33642 24.2689 5.95517L25.8626 4.76142C26.0189 4.64267 26.2314 4.61767 26.4126 4.69267C26.5939 4.76767 26.7189 4.93642 26.7439 5.13642C26.7689 5.33017 26.6876 5.52392 26.5251 5.64267L24.9314 6.83642C24.7126 6.99892 24.5939 7.25517 24.6126 7.53017L24.6689 8.52392C24.7064 9.16142 24.4189 9.77392 23.9064 10.1552L19.5939 13.3864C19.5001 13.4552 19.3814 13.4927 19.2626 13.4927Z" fill="#95A5A5"/>
                                                          <path d="M25.8191 3.78017L29.9316 0.698919C30.4191 0.336419 31.1128 0.430169 31.4753 0.917669L31.7816 1.32392C32.1503 1.81142 32.0503 2.50517 31.5628 2.86767L27.4503 5.94892C27.2066 6.13017 26.8628 6.08017 26.6753 5.83642L25.7066 4.54267C25.5253 4.30517 25.5753 3.96142 25.8191 3.78017Z" fill="#F29C1F"/>
                                                          <path d="M2.20625 18.1302C2.20625 18.4364 1.95625 18.6802 1.65625 18.6802H0V17.5739H1.65625C1.9625 17.5802 2.20625 17.8239 2.20625 18.1302Z" fill="#FB7B76"/>
                                                          <path d="M6.06875 18.6802H3.8625C3.55625 18.6802 3.3125 18.4302 3.3125 18.1302C3.3125 17.8302 3.5625 17.5802 3.8625 17.5802H6.06875C6.375 17.5802 6.61875 17.8302 6.61875 18.1302C6.61875 18.4302 6.375 18.6802 6.06875 18.6802Z" fill="#FB7B76"/>
                                                          <g clip-path="url(#clip2_2145_5148)">
                                                          <g clip-path="url(#clip3_2145_5148)">
                                                          <path d="M26.45 29.7802L23.4062 32.0552C23.2938 32.1427 23.1562 32.1864 23.0125 32.1864H0.65C0.29375 32.1864 0 31.8927 0 31.5364V6.12392C0 5.76767 0.29375 5.47392 0.65 5.47392H26.0625C26.425 5.47392 26.7125 5.76767 26.7125 6.12392V29.2552C26.7125 29.4614 26.6188 29.6552 26.45 29.7802Z" fill="#6EECF0"/>
                                                          <path d="M26.0617 5.47392H22.2617C22.6242 5.47392 22.9117 5.76767 22.9117 6.12392V32.1864H23.018C23.1617 32.1864 23.293 32.1427 23.4117 32.0552L26.4555 29.7802C26.618 29.6552 26.718 29.4614 26.718 29.2552V6.12392C26.7117 5.76767 26.418 5.47392 26.0617 5.47392Z" fill="#30B0AD"/>
                                                          <path d="M29.1812 28.2114V8.59267C29.1812 8.23017 28.8875 7.94267 28.5312 7.94267H3.11875C2.75625 7.94267 2.46875 8.23642 2.46875 8.59267V33.9989C2.46875 34.3614 2.7625 34.6489 3.11875 34.6489H20.575L29.1812 28.2114Z" fill="#FFE169"/>
                                                          <path d="M28.5246 7.94267H24.7246C25.0871 7.94267 25.3746 8.23642 25.3746 8.59267V31.0552L29.1746 28.2114V8.59267C29.1809 8.23642 28.8871 7.94267 28.5246 7.94267Z" fill="#EFB525"/>
                                                          <path d="M18.3246 37.4739H5.93711C5.57461 37.4739 5.28711 37.1802 5.28711 36.8239V11.4114C5.28711 11.0489 5.58086 10.7614 5.93711 10.7614H31.3434C31.7059 10.7614 31.9934 11.0552 31.9934 11.4114V27.2364L18.3246 37.4739Z" fill="#FC7371"/>
                                                          <path d="M31.3488 10.7614H27.5488C27.9113 10.7614 28.1988 11.0552 28.1988 11.4114V30.0802L31.9988 27.2364V11.4114C31.9988 11.0552 31.7051 10.7614 31.3488 10.7614Z" fill="#D84444"/>
                                                          <path d="M31.9997 27.2364L18.3247 37.4739L17.0435 31.0427C16.906 30.3364 17.3747 29.6614 18.081 29.5427L31.9997 27.2364Z" fill="#D84444"/>
                                                          </g>
                                                          </g>
                                                          </g>
                                                          </g>
                                                          <defs>
                                                          <clipPath id="clip0_2145_5148">
                                                          <rect width="32" height="32" fill="white" transform="translate(0 0.473923)"/>
                                                          </clipPath>
                                                          <clipPath id="clip1_2145_5148">
                                                          <rect width="32" height="32" fill="white" transform="translate(0 0.473923)"/>
                                                          </clipPath>
                                                          <clipPath id="clip2_2145_5148">
                                                          <rect width="32" height="32" fill="white" transform="translate(0 5.47392)"/>
                                                          </clipPath>
                                                          <clipPath id="clip3_2145_5148">
                                                          <rect width="32" height="32" fill="white" transform="translate(0 5.47392)"/>
                                                          </clipPath>
                                                          </defs>
                                                          </svg>
                                                                                                                    <p>الطباعةوالنشر</p>

                                                  </div>
                                                </div>


                                              </div>

                                              <div class="col-md-4 col-sm-2">
                                                <div class="gray-box-item">

                                                  <div class="gray-box-item">
                                                      <svg width="32" height="33" viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                          <g opacity="0.6" clip-path="url(#clip0_2145_5267)">
                                                          <g clip-path="url(#clip1_2145_5267)">
                                                          <path d="M28.6899 7.09462V29.1636H3.31055V3.78427H25.3795L28.6899 7.09462Z" fill="#818085"/>
                                                          <path d="M6.06836 6.54289H25.9304V26.405H6.06836V6.54289Z" fill="#616064"/>
                                                          <path d="M7.17188 7.64633H24.827V25.3015H7.17188V7.64633Z" fill="#DFD5C9"/>
                                                          <path d="M8.27539 0.473923H10.4823V3.78427H8.27539V0.473923Z" fill="#AACEFA"/>
                                                          <path d="M12.6895 0.473923H14.8963V3.78427H12.6895V0.473923Z" fill="#AACEFA"/>
                                                          <path d="M17.1035 0.473923H19.3104V3.78427H17.1035V0.473923Z" fill="#AACEFA"/>
                                                          <path d="M21.5176 0.473923H23.7245V3.78427H21.5176V0.473923Z" fill="#AACEFA"/>
                                                          <path d="M0 21.9912H3.31034V24.1981H0V21.9912Z" fill="#AACEFA"/>
                                                          <path d="M0 17.5774H3.31034V19.7843H0V17.5774Z" fill="#AACEFA"/>
                                                          <path d="M0 13.1636H3.31034V15.3705H0V13.1636Z" fill="#AACEFA"/>
                                                          <path d="M0 8.74979H3.31034V10.9567H0V8.74979Z" fill="#AACEFA"/>
                                                          <path d="M21.5176 29.1636H23.7245V32.4739H21.5176V29.1636Z" fill="#AACEFA"/>
                                                          <path d="M17.1035 29.1636H19.3104V32.4739H17.1035V29.1636Z" fill="#AACEFA"/>
                                                          <path d="M12.6895 29.1636H14.8963V32.4739H12.6895V29.1636Z" fill="#AACEFA"/>
                                                          <path d="M8.27539 29.1636H10.4823V32.4739H8.27539V29.1636Z" fill="#AACEFA"/>
                                                          <path d="M28.6895 8.74979H31.9998V10.9567H28.6895V8.74979Z" fill="#AACEFA"/>
                                                          <path d="M28.6895 13.1636H31.9998V15.3705H28.6895V13.1636Z" fill="#AACEFA"/>
                                                          <path d="M28.6895 17.5774H31.9998V19.7843H28.6895V17.5774Z" fill="#AACEFA"/>
                                                          <path d="M28.6895 21.9912H31.9998V24.1981H28.6895V21.9912Z" fill="#AACEFA"/>
                                                          <path d="M11.5858 10.9567C11.5858 11.5636 11.0893 12.0601 10.4824 12.0601C9.87546 12.0601 9.37891 11.5636 9.37891 10.9567C9.37891 10.3498 9.87546 9.85324 10.4824 9.85324C11.0893 9.85324 11.5858 10.3498 11.5858 10.9567Z" fill="#D80027"/>
                                                          <path d="M9.37891 19.2325H22.6203V21.4394H9.37891V19.2325Z" fill="#C3BAB0"/>
                                                          <path d="M9.37891 15.9222H22.6203V18.1291H9.37891V15.9222Z" fill="#C3BAB0"/>
                                                          <path d="M9.37891 23.0946H22.6203V24.1981H9.37891V23.0946Z" fill="#58595B"/>
                                                          </g>
                                                          </g>
                                                          <defs>
                                                          <clipPath id="clip0_2145_5267">
                                                          <rect width="32" height="32" fill="white" transform="translate(0 0.473923)"/>
                                                          </clipPath>
                                                          <clipPath id="clip1_2145_5267">
                                                          <rect width="32" height="32" fill="white" transform="translate(0 0.473923)"/>
                                                          </clipPath>
                                                          </defs>
                                                          </svg>
                                                                                                                    <p>الكترونيات</p>

                                                  </div>
                                                </div>


                                              </div>



                                            </div>
                                        </div>


                                            <div class="col-4 first">
                                              <div class="row">
                                                  <div class="col-12">
                                                      <h6>منتجات اعلي تصنيفا</h6>
                                                      <img src="{{ asset('web/img/1.jpg') }}">
                                                      <img src="{{ asset('web/img/2.jpg') }}">
                                                      <img src="{{ asset('web/img/3.jpg') }}">
                                                      <a href="#"  class="mt-3" style="text-decoration: none;">جميع المنتجات</a>
                                                  </div>
                                              </div>
                                              <div class="row">
                                                  <div class="col-12">
                                                      <h6>موردون اعلي تصنيفا</h6>
                                                      <img src="{{ asset('web/img/4.jpg') }}">
                                                      <img src="{{ asset('web/img/5.jpg') }}">
                                                      <img src="{{ asset('web/img/6.jpg') }}">
                                                      <a href="#"  class="mt-3" style="text-decoration: none;">جميع الموردين</a>
                                                  </div>
                                              </div>
                                          </div>


                                          </div>

                                    </div>



                                </div>
                            </div>

                            <div class="btn-group dropup">
                                <button type="button" class="btn btn-secondary dropdown-toggle"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    لوجيستيات
                                </button>
                                <div class="other dropdown-menu dropdown-menu-up">
                                    <a class="dropdown-item" href="#">Option 1</a>
                                    <a class="dropdown-item" href="#">Option 2</a>
                                </div>
                            </div>

                            <div class="btn-group dropup">
                                <button type="button" class="btn btn-secondary dropdown-toggle"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    ضمان التجارة
                                </button>
                                <div class="other dropdown-menu dropdown-menu-up">
                                    <div class="container">
                                        <div class="row justify-content-center align-items-center">

                                            <div class="col text-center ">
                                                <div class="white-box1">
                                                    <img src="{{ asset('web/img/Group.png') }}" class="mb-3">
                                                    <p> الشحن و الخدمات اللوجيستية</p>
                                                </div>
                                            </div>

                                            <div class="col text-center ">
                                                <div class="white-box1">
                                                    <img
                                                        src="{{ asset('web/img/mage_money-exchange.png') }}"class="mb-3">
                                                    <p> سياسة استرداد الاموال </p>
                                                </div>
                                            </div>
                                            <div class="col text-center">
                                                <div class="white-box1">
                                                    <img src="{{ asset('web/img/iconoir_tv-fix.png') }}"
                                                        class="mb-3">
                                                    <p> حماية ما بعد البيع </p>
                                                </div>
                                            </div>
                                            <div class="col text-center">
                                                <div class="white-box1">
                                                    <img src="{{ asset('web/img/Vector.png') }}" class="mb-3">
                                                    <p> عمليات دفع أمنة و سهلة</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row  justify-content-center ">
                                            <button type="button"
                                                style="background-color: transparent; border: 2px solid #FFD715; color: #FFD715;border-radius: 15px; width: 252px;height: 48px;">
                                                عرض المزيد
                                            </button>

                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>


                        <div class="headbottomleft col-6 d-flex justify-content-end" style="font-size: 14px;">


                            <div class="btn-group dropup">
                                <button type="button" class="btn btn-secondary dropdown-toggle"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    انضم الي الموردين
                                </button>

                                <div class="other dropdown-menu dropdown-menu-up">
                                    <div class="container">
                                        <div class="row justify-content-center align-items-center">


                                            <div class="col text-center">
                                                <div class="white-box">
                                                    <img src="{{ asset('web/img/image 51.png') }}" alt="Image 3"
                                                        class="img-fluid">
                                                    <p>برنامج شركاء ساس</p>
                                                </div>
                                            </div>


                                            <div class="col text-center">
                                                <div class="white-box">
                                                    <img src="{{ asset('web/img/image 53.png') }}" alt="Image 2"
                                                        class="img-fluid">
                                                    <p>الموردون المقيمون داخل المملكة العربية السعودية</p>
                                                </div>
                                            </div>


                                            <div class="col text-center ">
                                                <div class="white-box">
                                                    <img src="{{ asset('web/img/image 52.png') }} " alt="Image 1"
                                                        class="img-fluid">
                                                    <p>الموردون المقيمون خارج المملكة العربية السعودية</p>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="btn-group dropup">
                                <button type="button" class="btn btn-secondary dropdown-toggle"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    حلول ساس
                                </button>
                                <div class="other dropdown-menu dropdown-menu-up">
                                    <div class="container">
                                        <div class="row justify-content-center align-items-center">
                                            <div class="col text-center ">
                                                <div class="white-box">
                                                    <p style="font-size: 15px;">تاكد من استمرارية سلسة القيمة الخاصة بك
                                                        من
                                                        خلال قاعدة بيانات الموردين العالمية الخاصة بك</p>

                                                    <button type="button"
                                                        style="background-color: transparent; border: 2px solid #BE5409; color: #BE5409;border-radius: 15px;width: 80px;font-size: 12px;">
                                                        المزيد
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="col text-center">
                                                <div class="white-box">
                                                    <p style="font-size: 15px;">الوصول الى عملاء من خلال حلول التسويق
                                                        وذكاء
                                                        المبيعات القوية</p>
                                                    <button type="button"
                                                        style="background-color: transparent; border: 2px solid #BE5409; color: #BE5409;border-radius: 15px; width: 80px;font-size: 12px;">
                                                        المزيد
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="col text-center">
                                                <div class="white-box">
                                                    <p style="font-size: 15px;">اجذب عملاء وطنيا ودوليا من كل انحاء
                                                        العالم
                                                        بزيادة ظهورك على الانترنت</p>
                                                    <button type="button"
                                                        style="background-color: transparent; border: 2px solid #BE5409; color: #BE5409;border-radius: 15px; width: 80px;font-size: 12px;">
                                                        المزيد
                                                    </button>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row justify-content-center">
                                            <button type="button"
                                                style="background-color: #ffd715;  color:black;border-radius: 15px; width: 230px;height: 40px;">
                                                المزيد
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="btn-group dropup">
                                <button type="button" class="btn btn-secondary dropdown-toggle"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    احصل علي التطبيق
                                </button>
                                <div class="other dropdown-menu dropdown-menu-up">
                                    <div class="container d-flex justify-content-center align-items-center">
                                        <div class="row d-flex justify-content-center align-items-center mt-5">

                                            <div class="col d-flex flex-column justify-content-end"
                                                style="color: white; text-align: end; text-wrap: nowrap;">
                                                <h5>احصل على التطبيق ووفر 3 دولار للمستخدمين الجدد</h5>
                                                <a href="#"
                                                    style="color: white;text-decoration: underline;">معرفة
                                                    المزيد</a>
                                            </div>

                                            <div
                                                class="col d-flex flex-column align-items-center justify-content-center">
                                                <img src="{{ asset('web/img/GooglePlay.png') }}" alt=""
                                                    style="width: 156px;">
                                                <img src="{{ asset('web/img/AppStore.png') }}" alt=""
                                                    style="width: 150px;">
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="btn-group dropup">

                                <button type="button" class="btn btn-secondary dropdown-toggle"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    مركز المشتري
                                </button>
                                <div class="other dropdown-menu dropdown-menu-up">
                                    <div class="markaz container ">
                                        <div class="row" style="color: white;">
                                            <!-- Grid column -->
                                            <div class="col">
                                                <!-- Links -->
                                                <h6 class="text-uppercase fw-bold mb-4">
                                                    الموارد
                                                </h6>
                                                <p>
                                                    <a href="#!" class="text-reset"> المدونات</a>
                                                </p>
                                                <p>
                                                    <a href="#!" class="text-reset"> تقارير حول الصناعة</a>
                                                </p>
                                                <p>
                                                    <a href="#!" class="text-reset">مركز المساعدة</a>
                                                </p>
                                            </div>
                                            <!-- Grid column -->

                                            <!-- Grid column -->
                                            <div class="col">
                                                <!-- Links -->
                                                <h6 class="text-uppercase fw-bold mb-4">
                                                    خدمات التجارة
                                                </h6>
                                                <p>
                                                    <a href="#!" class="text-reset">ضمان التجارة</a>
                                                </p>
                                                <p>
                                                    <a href="#!" class="text-reset"> الحدمات اللوجيستية </a>
                                                </p>
                                                <p>
                                                    <a href="#!" class="text-reset">خطاب الاعتماد</a>
                                                </p>
                                                <p>
                                                    <a href="#!" class="text-reset">خدمات مراقبة المنتج والتفتيش
                                                        عليه</a>
                                                </p>
                                                <p>
                                                    <a href="#!" class="text-reset">برنامج الامتثال الضريبى</a>
                                                </p>
                                            </div>
                                            <!-- Grid column -->

                                            <!-- Grid column -->
                                            <div class="col">
                                                <!-- Links -->
                                                <h6 class="text-uppercase fw-bold mb-4">
                                                    ساس
                                                </h6>
                                                <p>
                                                    <a href="#!" class="text-reset"> كيف تعمل عملية الشراء</a>
                                                </p>
                                                <p>
                                                    <a href="#!" class="text-reset"> برنامج العضوية</a>
                                                </p>
                                            </div>
                                            <!-- Grid column -->


                                            <!-- Grid column -->
                                            <div class="col">
                                                <!-- Links -->
                                                <h6 class="text-uppercase fw-bold mb-4">
                                                    تعرف علينا
                                                </h6>
                                                <p>
                                                    <a href="#!" class="text-reset"> حول ساس</a>
                                                </p>
                                                <p>
                                                    <a href="#!" class="text-reset"> مسؤلية الشركة</a>
                                                </p>
                                                <p>
                                                    <a href="#!" class="text-reset"> مركز الاخبار </a>
                                                </p>
                                                <p>
                                                    <a href="#!" class="text-reset"> وظائف </a>
                                                </p>

                                            </div>
                                            <!-- Grid column -->
                                        </div>
                                    </div>


                                </div>


                            </div>





                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--header end -->
    </header>
</body>

</html>



{{-- @if (Theme::get('headerMobile'))
    {!! Theme::get('headerMobile') !!}
@else
    {!! Theme::partial('header-mobile') !!}
@endif --}}
@if (is_plugin_active('ecommerce'))
    <div class="ps-panel--sidebar" id="cart-mobile" style="display: none">
        <div class="ps-panel__header">
            <h3>{{ __('Shopping Cart') }}</h3>
        </div>
        <div class="navigation__content">
            <div class="ps-cart--mobile">
                {!! Theme::partial('cart') !!}
            </div>
        </div>
    </div>
    <div class="ps-panel--sidebar" id="navigation-mobile" style="display: none">
        <div class="ps-panel__header">
            <h3>{{ __('Categories') }}</h3>
        </div>
        <div class="ps-panel__content">
            <ul class="menu--mobile">
                {!! $categoriesDropdown ?? null !!}
            </ul>
        </div>
    </div>
@endif

{{-- <div class="navigation--list">
    <div class="navigation__content">
        <a class="navigation__item ps-toggle--sidebar" href="#menu-mobile"><i class="icon-menu"></i><span>
                {{ __('Menu') }}</span></a>
        <a class="navigation__item ps-toggle--sidebar" href="#navigation-mobile"><i class="icon-list4"></i><span>
                {{ __('Categories') }}</span></a>
        <a class="navigation__item ps-toggle--sidebar" href="#search-sidebar"><i class="icon-magnifier"></i><span>
                {{ __('Search') }}</span></a>
        <a class="navigation__item ps-toggle--sidebar" href="#cart-mobile"><i class="icon-bag2"></i><span>
                {{ __('Cart') }}</span></a>
    </div>
</div> --}}

@if (is_plugin_active('ecommerce'))
    <div class="ps-panel--sidebar" id="search-sidebar" style="display: none">
        <div class="ps-panel__header">
            <form class="ps-form--search-mobile" action="{{ route('public.products') }}"
                data-ajax-url="{{ route('public.ajax.search-products') }}" method="get">
                <div class="form-group--nest position-relative">
                    <input class="form-control input-search-product" name="q"
                        value="{{ BaseHelper::stringify(request()->query('q')) }}" type="text" autocomplete="off"
                        placeholder="{{ __('Search something...') }}">
                    <div class="spinner-icon">
                        <i class="fa fa-spin fa-spinner"></i>
                    </div>
                    <button type="submit"><i class="icon-magnifier"></i></button>
                    <div class="ps-panel--search-result"></div>
                </div>
            </form>
        </div>
        <div class="navigation__content"></div>
    </div>
@endif
<div class="ps-panel--sidebar" id="menu-mobile" style="display: none">
    <div class="ps-panel__header">
        <h3>{{ __('Menu') }}</h3>
    </div>
    <div class="ps-panel__content">
        {!! Menu::renderMenuLocation('main-menu', [
            'view' => 'menu',
            'options' => ['class' => 'menu--mobile'],
        ]) !!}

        <ul class="menu--mobile menu--mobile-extra">
            @if (is_plugin_active('ecommerce'))
                @if (EcommerceHelper::isOrderTrackingEnabled())
                    <li><a href="{{ route('public.orders.tracking') }}"><i class="icon-check-square"></i>
                            {{ __('Track your order') }}</a></li>
                @endif
                @if (EcommerceHelper::isCompareEnabled())
                    <li><a href="{{ route('public.compare') }}"><i class="icon-chart-bars"></i>
                            <span>{{ __('Compare') }}</span></a></li>
                @endif
                @if (EcommerceHelper::isWishlistEnabled())
                    <li><a href="{{ route('public.wishlist') }}"><i class="icon-heart"></i>
                            <span>{{ __('Wishlist') }}</span></a></li>
                @endif

            @endif

            @if (is_plugin_active('language'))
                @php
                    $supportedLocales = Language::getSupportedLocales();
                @endphp

                @if ($supportedLocales && count($supportedLocales) > 1)
                    @php
                        $languageDisplay = setting('language_display', 'all');
                    @endphp
                    <li class="menu-item-has-children">
                        <a href="#">
                            @if ($languageDisplay == 'all' || $languageDisplay == 'flag')
                                {!! language_flag(Language::getCurrentLocaleFlag(), Language::getCurrentLocaleName()) !!}
                            @endif
                            @if ($languageDisplay == 'all' || $languageDisplay == 'name')
                                {{ Language::getCurrentLocaleName() }}
                            @endif
                        </a>
                        <span class="sub-toggle"></span>
                        <ul class="sub-menu">
                            @foreach ($supportedLocales as $localeCode => $properties)
                                @if ($localeCode != Language::getCurrentLocale())
                                    <li>
                                        <a
                                            href="{{ Language::getSwitcherUrl($localeCode, $properties['lang_code']) }}">
                                            @if ($languageDisplay == 'all' || $languageDisplay == 'flag')
                                                {!! language_flag($properties['lang_flag'], $properties['lang_name']) !!}
                                            @endif
                                            @if ($languageDisplay == 'all' || $languageDisplay == 'name')
                                                <span>{{ $properties['lang_name'] }}</span>
                                            @endif
                                        </a>
                                    </li>
                                @endif
                            @endforeach
                        </ul>
                    </li>
                @endif
            @endif
        </ul>
    </div>
</div>
