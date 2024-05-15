<header class="header--mobile">
    <div class="header__left">
        <button class="ps-drawer-toggle">
            <x-core::icon name="ti ti-menu-2" />
        </button>
    </div>
    <div class="header__center">
        <a
            class="ps-logo"
            href="{{ route('marketplace.vendor.dashboard') }}"
        >
            @php $logo = theme_option('logo_vendor_dashboard', theme_option('logo')); @endphp
            @if ($logo)
                <img
                    src="{{ RvMedia::getImageUrl($logo) }}"
                    alt="{{ theme_option('site_title') }}"
                >
            @endif
        </a>
    </div>
    <div class="header__right">
        <a class="header__site-link" href="{{ route('customer.logout') }}">
            <x-core::icon name="ti ti-logout" />
        </a>
    </div>
</header>
<aside class="ps-drawer--mobile">
    <div class="ps-drawer__header">
        <h4 class="fs-3 mb-0">Menu</h4>
        <button class="ps-drawer__close">
            <x-core::icon name="ti ti-x" />
        </button>
    </div>
    <div class="ps-drawer__content">
        @include(MarketplaceHelper::viewPath('vendor-dashboard.layouts.menu'))
    </div>
</aside>
<div class="ps-site-overlay"></div>
<main class="ps-main col-md-12">
    <div class="ps-main__sidebar col-md-2">
        <div class="ps-sidebar">
            <a class="navbar-brand" href="{{ route('public.index') }}">
                <img src="{{ asset('web/img/logo.png') }}" class="logo" alt="Your Logo" height="60">
            </a>
            <div class="ps-sidebar__content">
                <div class="ps-sidebar__center">
                    @include(MarketplaceHelper::viewPath('vendor-dashboard.layouts.menu'))
                </div>
                <div class="logout_dash">
                    <a href="{{ route('customer.logout') }}">
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M3.35078 23.4986H21.2008C22.6071 23.4986 23.7508 22.355 23.7508 20.9486V3.09865C23.7508 1.69232 22.6071 0.548645 21.2008 0.548645H3.35078C1.94446 0.548645 0.800781 1.69232 0.800781 3.09865V10.7499H9.72323V5.64865L17.3732 12.0236L9.72323 18.3986V13.2999H0.800781V20.9486C0.800781 22.355 1.94446 23.4986 3.35078 23.4986Z" fill="white"/>
                            </svg>                  </a>
                            <span class="dashboard_links_item_span" ><a style="color: #fff;" >خروج</a></span>
                </div>

            </div>
        </div>
    </div>
    <div
        class="ps-main__wrapper col-md-10"
        id="vendor-dashboard"
    >
        <header class="d-flex justify-content-between align-items-center mb-3">
            <h3 class="fs-1">{{ page_title()->getTitle(false) }}</h3>

            @if (auth('customer')->user()->store && auth('customer')->user()->store->id)
                <div class="d-flex align-items-center gap-4">
                    @if (is_plugin_active('language'))
                        @include(MarketplaceHelper::viewPath('vendor-dashboard.partials.language-switcher'))
                    @endif
                    <a href="{{ auth('customer')->user()->store->url }}" target="_blank" class="text-uppercase">
                        <x-core::icon name="ti ti-building-store" />
                        {{ __('View your store') }}
                    </a>
                </div>
            @endif

        </header>

        <div id="app">
            @yield('content')
        </div>
    </div>

</main>
