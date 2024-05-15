<!DOCTYPE html>
<html lang="ar" dir="rtl">

<head>


    <meta charset="UTF-8">
    <title>Home</title>

    <link rel="icon" href="img/Frame 427319104.png" type="image/x-icon">

    <!-- style css links -->
    <link rel="stylesheet" href="web/css/bootstrap.min.css">
    <link rel="stylesheet" href="web/css/style.css">
    <link rel="stylesheet" href="web/css/media.css">

</head>

<body>



    <!-- Home section -->

    <div class="home_section">

        <!-- Top bar  -->
        <div class="Top_bar">

            <div class="links_btns">
                <span>
                    <i class="fa-regular fa-user"></i>
                    أهلاً بك !
                    @if (auth('customer')->check())
                    <a href="{{ route('customer.overview') }}" class="customer-name">{{ auth('customer')->user()->name }}</a>
                    <a href="{{ route('customer.logout') }}">{{ __('Logout') }}</a>
                @else
                    <a href="{{ route('customer.login') }}">{{ __('تسجيل الدخول') }}</a> @csrf <a href="{{ route('customer.register') }}">{{ __('تسجيل الخروج') }}</a>
                @endif
                </span>

                <span>
                    <i class="fa-regular fa-bell"></i>
                    <i class="fa-solid fa-cart-shopping pe-2"></i>
                </span>

                <span class="lang_country">
                    <i class="fa-solid fa-chevron-down"></i>
                    <img src="web/img/openmoji_flag-egypt.png"> /
                    AR /
                    USD
                </span>

            </div>

            <!--------------->

            <div class="logo">
                <img src="web/img/Frame 427319104.png" alt="">
            </div>


        </div>

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

                    <a href="#"> طلب عرض اسعار</a>
                </div>

                <!-- search content -->
                <form  action="{{ route('public.products') }}"
                data-ajax-url="{{ route('public.ajax.search-products') }}" method="get">
                <div class="search_content">


                        <div class="search_icon">

                            <i class="fa-solid fa-magnifying-glass"></i>

                        </div>

                        <svg class="pe-1 ps-1" width="30" height="27" viewBox="0 0 27 23" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M12.375 1H3.625M25.5 20.25V6.25C25.5 5.78587 25.3156 5.34075 24.9874 5.01256C24.6592 4.68437 24.2141 4.5 23.75 4.5H2.75C2.28587 4.5 1.84075 4.68437 1.51256 5.01256C1.18437 5.34075 1 5.78587 1 6.25V20.25C1 20.7141 1.18437 21.1592 1.51256 21.4874C1.84075 21.8156 2.28587 22 2.75 22H23.75C24.2141 22 24.6592 21.8156 24.9874 21.4874C25.3156 21.1592 25.5 20.7141 25.5 20.25ZM16.75 16.75C15.8217 16.75 14.9315 16.3812 14.2751 15.7249C13.6187 15.0685 13.25 14.1783 13.25 13.25C13.25 12.3217 13.6187 11.4315 14.2751 10.7751C14.9315 10.1187 15.8217 9.75 16.75 9.75C17.6782 9.75 18.5685 10.1187 19.2249 10.7751C19.8812 11.4315 20.25 12.3217 20.25 13.25C20.25 14.1783 19.8812 15.0685 19.2249 15.7249C18.5685 16.3812 17.6782 16.75 16.75 16.75Z"
                                stroke="white" stroke-opacity="0.75" stroke-width="1.75" />
                        </svg>


                        <input type="search" placeholder="الشركات أوالمنتجات ما الذي تبحث عنه ؟">



                        <div class="p-2">

                            <select class="product_options">
                                <option value="0">{{ __('منتجات') }}</option>
                                {!! ProductCategoryHelper::renderProductCategoriesSelect() !!}

                            </select>
                        </div>

                </div>
            </form>

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

        <!-- Join suppliers section -->

        <div class="Join_suppliers_section">


            <div class="row">

                <div class="col-md-4">

                    <div class="Join_suppliers">
                        <img src="web/img/image 51.png">
                        <h4 class="pt-3">برنامج شركاء ساس</h4>
                    </div>

                </div>

                <div class="col-md-4">

                    <div class="Join_suppliers">
                        <img src="web/img/image 52.png">
                        <h4 class="pt-3"> الموردون المقيمون داخل المملكة العربية السعودية</h4>
                    </div>

                </div>


                <div class="col-md-4">

                    <div class="Join_suppliers">
                        <img src="web/img/image 53.png">
                        <h4 class="pt-3"> الموردون المقيمون خارج المملكة العربية السعودية</h4>
                    </div>

                </div>

            </div>

        </div>

        <!------------->

        <hr style="background-color: gray;  margin: 5% ; border: 0.3px solid #73717269">


        <div class="links">

            <div class="d-flex justify-content-center align-items-center " style="font-weight: 600;">

                <div class="ms-3">

                    <svg width="21" height="21" viewBox="0 0 21 21" fill="none"
                        xmlns="http://www.w3.org/2000/svg">
                        <path
                            d="M1.09961 1.3H7.99961V8.2H1.09961V1.3ZM12.5996 1.3H19.4996V8.2H12.5996V1.3ZM1.09961 12.8H7.99961V19.7H1.09961V12.8ZM12.5996 16.25C12.5996 17.165 12.9631 18.0425 13.6101 18.6895C14.2571 19.3365 15.1346 19.7 16.0496 19.7C16.9646 19.7 17.8421 19.3365 18.4891 18.6895C19.1361 18.0425 19.4996 17.165 19.4996 16.25C19.4996 15.335 19.1361 14.4575 18.4891 13.8105C17.8421 13.1635 16.9646 12.8 16.0496 12.8C15.1346 12.8 14.2571 13.1635 13.6101 13.8105C12.9631 14.4575 12.5996 15.335 12.5996 16.25Z"
                            stroke="white" stroke-width="1.53333" stroke-linecap="round" stroke-linejoin="round" />
                    </svg>

                    <span>جميع الفئات</span>

                </div>

                <div class="ms-3" id="Logistics">
                    <svg width="16" height="17" viewBox="0 0 16 17" fill="none"
                        xmlns="http://www.w3.org/2000/svg">
                        <path
                            d="M11.0027 2.74999V1.73749C11.002 1.4692 10.895 1.21212 10.7053 1.02241C10.5156 0.832694 10.2585 0.72577 9.99023 0.724991H6.61523C6.34694 0.72577 6.08986 0.832694 5.90015 1.02241C5.71044 1.21212 5.60351 1.4692 5.60273 1.73749V2.74999M15.0527 8.52968V4.77499C15.0512 4.23841 14.8373 3.72424 14.4579 3.34482C14.0785 2.9654 13.5643 2.75155 13.0277 2.74999H3.57773C3.04115 2.75155 2.52699 2.9654 2.14756 3.34482C1.76814 3.72424 1.55429 4.23841 1.55273 4.77499V8.65624M8.30273 6.44562V15.4252"
                            stroke="white" stroke-width="1.35" stroke-linecap="round" stroke-linejoin="round" />
                    </svg>

                    <span>لوجيستيات</span>
                </div>

                <span> ضمان التجارة </span>
            </div>


            <div class="links_left">
                <span class="Join_suppliers_link">انضم الى الموردين</span>
                <span>حلول ساس</span>
                <span>احصل على التطبيق</span>
                <span>مركز المشترى</span>
            </div>


        </div>


    </div>
