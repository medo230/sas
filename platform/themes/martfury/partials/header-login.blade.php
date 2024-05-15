<header  data-sticky="true">
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">


            <div class="collapse navbar-collapse justify-content-start  " id="navbarNav">
                <ul class="navbar-nav">

                    <li class="nav-item d-flex align-items-center " style="justify-content: center">
                        <a class="nav-link" href="#">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                class="bi bi-person" viewBox="0 0 16 16">
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
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                class="bi bi-bell" viewBox="0 0 16 16">
                                <path
                                    d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2M8 1.918l-.797.161A4 4 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4 4 0 0 0-3.203-3.92zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5 5 0 0 1 13 6c0 .88.32 4.2 1.22 6" />
                            </svg>
                        </a>
                    </li>

                    <li class="nav-item mt-4">
                        <a href="{{ route('public.cart') }}" style="color: #212529;text-decoration: none" >
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                class="bi bi-cart2" viewBox="0 0 16 16">
                                <path
                                    d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5M3.14 5l1.25 5h8.22l1.25-5zM5 13a1 1 0 1 0 0 2 1 1 0 0 0 0-2m-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0m9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2m-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0" />
                            </svg>
                            <i >{{ Cart::instance('cart')->count() }}</i>
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
</header>
