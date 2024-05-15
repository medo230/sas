@php
    Theme::set('stickyHeader', 'false');
    Theme::set('topHeader', Theme::partial('header-product-page', compact('product')));
    Theme::set('bottomFooter', Theme::partial('footer-product-page', compact('product')));
    Theme::set('pageId', 'product-page');
    Theme::set('headerMobile', Theme::partial('header-mobile-product'));
@endphp

<div class="ps-page--product">
    <div class="ps-container" id="app">
        <div class="ps-page__container">
            <div class="ps-page__left">
                <div class="ps-product--detail ps-product--fullwidth">
                    <div class="ps-product__header">
                        <div class="ps-product__thumbnail" data-vertical="true">
                            <figure>
                                <div class="ps-wrapper">
                                    <div class="ps-product__gallery" data-arrow="true">
                                        @foreach ($productImages as $img)
                                            <div class="item">
                                                <a href="{{ RvMedia::getImageUrl($img) }}">
                                                    <img src="{{ RvMedia::getImageUrl($img) }}"
                                                        alt="{{ $product->name }}" />
                                                </a>
                                            </div>
                                        @endforeach
                                    </div>
                                    <div class="ps-product__actions mt-3 ">
                                        @if (EcommerceHelper::isWishlistEnabled())
                                            <a class="js-add-to-wishlist-button" href="#"
                                                data-url="{{ route('public.wishlist.add', $product->id) }}"><i
                                                    class="icon-heart"></i></a>
                                        @endif
                                        @if (EcommerceHelper::isCompareEnabled())
                                            <a class="js-add-to-compare-button" href="#"
                                                data-url="{{ route('public.compare.add', $product->id) }}"
                                                title="{{ __('Compare') }}"><i class="icon-chart-bars"></i></a>
                                        @endif
                                    </div>
                                </div>
                            </figure>
                            <div class="ps-product__variants" data-item="4" data-md="4" data-sm="4"
                                data-arrow="false">
                                @foreach ($productImages as $img)
                                    <div class="item">
                                        <img src="{{ RvMedia::getImageUrl($img, 'thumb') }}"
                                            alt="{{ $product->name }}" />
                                    </div>
                                @endforeach
                            </div>
                        </div>
                        <div class="ps-product__info">
                            <h1>{{ $product->name }}</h1>
                            <div class="ps-product__meta">
                                @if ($product->brand_id)
                                    <p>{{ __('Brand') }}: <a
                                            href="{{ $product->brand->url }}">{{ $product->brand->name }}</a></p>
                                @endif

                                @if (EcommerceHelper::isReviewEnabled() && $product->reviews_count > 0)
                                    <div class="rating_wrap">
                                        <a href="#tab-reviews">
                                            <div class="rating">
                                                <div class="product_rate"
                                                    style="width: {{ $product->reviews_avg * 20 }}%"></div>
                                            </div>
                                            <span class="rating_num">({{ $product->reviews_count }}
                                                {{ __('reviews') }})</span>
                                        </a>
                                    </div>
                                @endif
                            </div>
                            <div class="order_details mt-3">

                                <div class="order_num">

                                    <div class="order_num_item">
                                        <h4 class="ps-product__price @if ($product->front_sale_price !== $product->price) sale @endif">
                                            <span>{{ format_price($product->front_sale_price_with_taxes) }}</span>
                                            @if ($product->front_sale_price !== $product->price)
                                                &nbsp;<del>{{ format_price($product->price_with_taxes) }} </del>
                                            @endif
                                        </h4>
                                        <div class="ps-product__desc">
                                            @if (is_plugin_active('marketplace') && $product->store_id)
                                                <p>{{ __('Sold By') }}: <a
                                                        href="{{ $product->store->url }}"><strong>{{ $product->store->name }}</strong></a>
                                                </p>
                                            @endif


                                        </div>

                                        <p class="mt-3"> الحد الادنى للطلبات : 100 صندوق </p>
                                    </div>


                                </div>
                                <hr style="border: 1px solid #00000057">


                                <h3 class="title_color"> الالوان</h3>
                                <form class="" method="POST" action="{{ route('public.cart.add-to-cart') }}">
                                    @csrf
                                    <div class="colors">


                                        @if ($product->variations()->count() > 0)
                                            <div class="pr_switch_wrap">
                                                {!! render_product_swatches($product, [
                                                    'selected' => $selectedAttrs,
                                                    'view' => Theme::getThemeNamespace() . '::views.ecommerce.attributes.swatches-renderer',
                                                ]) !!}
                                            </div>
                                        @endif
                                        {!! render_product_options($product) !!}

                                        <div class="number-items-available mb-3">
                                            @if ($product->isOutOfStock())
                                                <span class="text-danger">({{ __('Out of stock') }})</span>
                                            @else
                                                @if (!$productVariation)
                                                    <span class="text-danger">({{ __('Not available') }})</span>
                                                @else
                                                    @if ($productVariation->isOutOfStock())
                                                        <span class="text-danger">({{ __('Out of stock') }})</span>
                                                    @elseif (!$productVariation->with_storehouse_management || $productVariation->quantity < 1)
                                                        <span class="text-success">({{ __('Available') }})</span>
                                                    @elseif ($productVariation->quantity)
                                                        <span class="text-success">
                                                            @if ($productVariation->quantity != 1)
                                                                ({{ __(':number products available', ['number' => $productVariation->quantity]) }})
                                                            @else
                                                                ({{ __(':number product available', ['number' => $productVariation->quantity]) }})
                                                            @endif
                                                        </span>
                                                    @endif
                                                @endif
                                            @endif
                                        </div>
                                        <h4 class="ps-product__price @if ($product->front_sale_price !== $product->price) sale @endif">
                                            <span>{{ format_price($product->front_sale_price_with_taxes) }}</span>
                                            @if ($product->front_sale_price !== $product->price)
                                                &nbsp;<del>{{ format_price($product->price_with_taxes) }} </del>
                                            @endif
                                        </h4>
                                        {!! apply_filters(ECOMMERCE_PRODUCT_DETAIL_EXTRA_HTML, null, $product) !!}

                                        <figure>
                                            <div class="form-group--number product__qty">
                                                <button class="up" type="button"><i class="icon-plus"></i></button>
                                                <button class="down" type="button"><i
                                                        class="icon-minus"></i></button>
                                                <input class="form-control qty-input" type="number" name="qty"
                                                    value="1" placeholder="1" min="1">
                                            </div>
                                        </figure>
                                        <input type="hidden" name="id" class="hidden-product-id"
                                            value="{{ $product->is_variation || !$product->defaultVariation->product_id ? $product->id : $product->defaultVariation->product_id }}" />

                                    </div>



                                    <div class="Subtotal mt-5">



                                        <div class="Subtotal_title">
                                            <h6>الاجمالى الفرعى</h6>
                                            <h5>0.00$</h5>
                                        </div>

                                        <div class="Subtotal_btns mt-5">
                                            <button class="send_order">ارسال طلب الطلبية</button>
                                            @if (EcommerceHelper::isCartEnabled())
                                                <button
                                                    class="add_shopping @if ($product->isOutOfStock()) btn-disabled @endif"
                                                    type="submit" name="add_to_cart" value="1"
                                                    @if ($product->isOutOfStock()) disabled @endif>{{ __('Add to cart') }}</button>
                                            @endif
                                        </div>

                                        <div style="text-align: center;">
                                            <svg width="25" height="24" viewBox="0 0 25 24" fill="none"
                                                xmlns="http://www.w3.org/2000/svg">
                                                <path
                                                    d="M18.7661 4.82941L18.7698 4.05316H18.7661V4.82941ZM6.22971 4.82941V4.05315L6.22603 4.05317L6.22971 4.82941ZM20.3478 5.48922L19.7987 6.03796L19.803 6.04224L20.3478 5.48922ZM21.0076 7.07083L20.2313 7.0689V7.07083H21.0076ZM21.0076 16.9292H20.2313L20.2313 16.9311L21.0076 16.9292ZM20.3478 18.5108L19.803 17.9578L19.8011 17.9597L20.3478 18.5108ZM18.7661 19.1609L18.7672 18.3847H18.7661V19.1609ZM6.22971 19.1609V18.3847L6.22864 18.3847L6.22971 19.1609ZM4.6481 18.5108L5.19478 17.9597L5.19284 17.9578L4.6481 18.5108ZM3.98829 16.9292L4.76454 16.9311V16.9292H3.98829ZM3.98829 7.07083H4.76454L4.76454 7.0689L3.98829 7.07083ZM4.6481 5.48922L5.19285 6.04225L5.19716 6.03794L4.6481 5.48922ZM17.2629 8.41954L17.7564 9.01867L17.784 8.99594L17.8094 8.97077L17.2629 8.41954ZM13.0226 11.9127L13.502 12.5231L13.5092 12.5176L13.5162 12.5118L13.0226 11.9127ZM17.3405 8.3031L16.6575 7.93412L16.6374 7.97139L16.6214 8.01062L17.3405 8.3031ZM17.3987 8.13815L18.162 8.2796L18.1637 8.27018L18.1652 8.26071L17.3987 8.13815ZM17.3987 7.96349L18.1652 7.84092L18.1624 7.82303L18.1587 7.80529L17.3987 7.96349ZM17.3211 7.80824L16.7054 8.28107L16.7213 8.30174L16.7386 8.3213L17.3211 7.80824ZM17.1852 7.7015L16.8163 8.38446L16.8433 8.39908L16.8715 8.41152L17.1852 7.7015ZM17.0203 7.64329L17.1617 6.88003L17.1545 6.8787L17.1473 6.8775L17.0203 7.64329ZM16.8456 7.64329L16.7186 6.8775L16.6545 6.88813L16.593 6.90928L16.8456 7.64329ZM16.6904 7.73061L17.1832 8.33035L17.1865 8.32763L16.6904 7.73061ZM12.4986 11.1752L12.0055 11.7747L12.4984 12.1801L12.9915 11.775L12.4986 11.1752ZM8.28747 7.71121L7.79135 8.30824L7.79434 8.3107L8.28747 7.71121ZM8.13222 7.62388L8.3848 6.88987L8.32335 6.86873L8.25924 6.85809L8.13222 7.62388ZM7.95756 7.62388L7.83054 6.85806L7.82396 6.85921L7.95756 7.62388ZM7.78291 7.6821L8.09666 8.39211L8.11599 8.38357L8.13483 8.37399L7.78291 7.6821ZM7.64706 7.78883L7.03144 7.316L7.01219 7.34106L6.99505 7.36759L7.64706 7.78883ZM7.56944 8.11874L6.79794 8.20506L6.79919 8.21509L7.56944 8.11874ZM7.73439 8.41954L7.23906 9.01721L7.24083 9.01867L7.73439 8.41954ZM11.9747 11.9127L11.481 12.5119L11.4905 12.5194L11.9747 11.9127ZM12.4986 12.097L12.4962 12.8733L12.5071 12.8732L12.4986 12.097ZM18.7661 4.05316H6.22971V5.60566H18.7661V4.05316ZM20.8968 4.9405C20.3325 4.37586 19.5681 4.05695 18.7698 4.05317L18.7625 5.60565C19.1514 5.60749 19.5238 5.76286 19.7987 6.03794L20.8968 4.9405ZM21.7838 7.07276C21.7858 6.26975 21.4646 5.49972 20.8925 4.9362L19.803 6.04224C20.0779 6.31302 20.2323 6.68303 20.2313 7.0689L21.7838 7.07276ZM21.7838 16.9292V7.07083H20.2313V16.9292H21.7838ZM20.8925 19.0638C21.4646 18.5003 21.7858 17.7303 21.7838 16.9273L20.2313 16.9311C20.2323 17.317 20.0779 17.687 19.803 17.9578L20.8925 19.0638ZM18.7651 19.9372C19.5626 19.9383 20.3282 19.6236 20.8944 19.0619L19.8011 17.9597C19.5262 18.2324 19.1545 18.3852 18.7672 18.3847L18.7651 19.9372ZM6.22971 19.9372H18.7661V18.3847H6.22971V19.9372ZM4.10143 19.0619C4.66766 19.6236 5.43322 19.9383 6.23078 19.9372L6.22864 18.3847C5.8414 18.3852 5.4697 18.2324 5.19477 17.9597L4.10143 19.0619ZM3.21204 16.9273C3.21004 17.7303 3.53128 18.5003 4.10337 19.0638L5.19284 17.9578C4.91794 17.687 4.76357 17.317 4.76454 16.9311L3.21204 16.9273ZM3.21204 7.07083V16.9292H4.76454V7.07083H3.21204ZM4.10337 4.9362C3.53128 5.49972 3.21004 6.26975 3.21204 7.07276L4.76454 7.0689C4.76357 6.68303 4.91794 6.31302 5.19283 6.04224L4.10337 4.9362ZM6.22603 4.05317C5.42777 4.05695 4.66332 4.37586 4.09904 4.9405L5.19716 6.03794C5.47207 5.76286 5.8445 5.60749 6.23339 5.60565L6.22603 4.05317ZM16.7693 7.8204L12.529 11.3135L13.5162 12.5118L17.7564 9.01867L16.7693 7.8204ZM16.6214 8.01062C16.6431 7.95727 16.6754 7.90886 16.7163 7.8683L17.8094 8.97077C17.9172 8.86386 18.0023 8.73623 18.0595 8.59558L16.6214 8.01062ZM16.6355 7.99669C16.6395 7.97481 16.647 7.9537 16.6575 7.93412L18.0234 8.67208C18.0898 8.54927 18.1365 8.41685 18.162 8.2796L16.6355 7.99669ZM16.6322 8.08606C16.6285 8.06271 16.6285 8.03892 16.6322 8.01558L18.1652 8.26071C18.1874 8.12167 18.1874 7.97997 18.1652 7.84092L16.6322 8.08606ZM16.7386 8.3213C16.6886 8.26453 16.6542 8.19574 16.6387 8.12169L18.1587 7.80529C18.1193 7.61603 18.0314 7.44026 17.9036 7.29518L16.7386 8.3213ZM16.8715 8.41152C16.8061 8.38262 16.749 8.33776 16.7054 8.28107L17.9367 7.33541C17.8219 7.18593 17.6714 7.06767 17.499 6.99149L16.8715 8.41152ZM16.8788 8.40654C16.857 8.40248 16.8358 8.39503 16.8163 8.38446L17.5542 7.01855C17.4314 6.9522 17.299 6.90547 17.1617 6.88003L16.8788 8.40654ZM16.9726 8.40907C16.9464 8.41343 16.9195 8.41343 16.8933 8.40907L17.1473 6.8775C17.0054 6.85396 16.8605 6.85396 16.7186 6.8775L16.9726 8.40907ZM17.1865 8.32763C17.1603 8.34939 17.1304 8.36621 17.0982 8.37729L16.593 6.90928C16.4476 6.95932 16.3125 7.03532 16.1943 7.1336L17.1865 8.32763ZM12.9915 11.775L17.1832 8.33035L16.1975 7.13088L12.0058 10.5755L12.9915 11.775ZM7.79434 8.3107L12.0055 11.7747L12.9918 10.5757L8.7806 7.11172L7.79434 8.3107ZM7.87963 8.35789C7.84744 8.34681 7.81753 8.32998 7.79136 8.30823L8.78358 7.11419C8.66532 7.01591 8.53021 6.93991 8.3848 6.88987L7.87963 8.35789ZM8.08458 8.38967C8.0583 8.39403 8.03148 8.39403 8.0052 8.38967L8.25924 6.85809C8.11731 6.83455 7.97247 6.83455 7.83054 6.85809L8.08458 8.38967ZM8.13483 8.37399C8.12108 8.38099 8.10636 8.38589 8.09116 8.38855L7.82396 6.85921C7.68719 6.88311 7.55474 6.92726 7.43099 6.9902L8.13483 8.37399ZM8.26269 8.26166C8.21914 8.31836 8.16205 8.36322 8.09666 8.39211L7.46915 6.97208C7.29675 7.04826 7.14624 7.16652 7.03144 7.316L8.26269 8.26166ZM8.34087 8.03243C8.34784 8.09469 8.33307 8.15745 8.29908 8.21007L6.99505 7.36759C6.83477 7.61568 6.76516 7.91153 6.798 8.20505L8.34087 8.03243ZM8.22972 7.82186C8.29055 7.87228 8.32988 7.94399 8.33969 8.02239L6.79919 8.21509C6.83842 8.52869 6.99572 8.81554 7.23906 9.01721L8.22972 7.82186ZM12.4682 11.3135L8.22795 7.8204L7.24083 9.01867L11.4811 12.5118L12.4682 11.3135ZM12.501 11.3208C12.4857 11.3207 12.4708 11.3155 12.4589 11.3059L11.4905 12.5194C11.7762 12.7474 12.1306 12.8721 12.4962 12.8733L12.501 11.3208ZM12.5431 11.3022C12.528 11.3141 12.5094 11.3206 12.4902 11.3208L12.5071 12.8732C12.8682 12.8693 13.218 12.7462 13.502 12.5231L12.5431 11.3022Z"
                                                    fill="black" />
                                                <path
                                                    d="M17.2669 8.41961L13.0266 11.9127C12.877 12.0302 12.6928 12.095 12.5026 12.0971C12.3122 12.0965 12.1275 12.0315 11.9787 11.9127L7.7384 8.41961C7.64714 8.34398 7.58815 8.23641 7.57344 8.11881C7.56051 8.00318 7.58793 7.88664 7.65107 7.78891C7.6867 7.74252 7.73341 7.70582 7.78691 7.68217C7.84191 7.6542 7.90078 7.63457 7.96157 7.62395C8.01939 7.61436 8.0784 7.61436 8.13622 7.62395C8.19283 7.64343 8.24543 7.67302 8.29147 7.71128L12.5026 11.1753L16.6944 7.73069C16.7404 7.69243 16.793 7.66284 16.8496 7.64336C16.9075 7.63377 16.9665 7.63377 17.0243 7.64336C17.082 7.65405 17.1376 7.67369 17.1892 7.70158C17.2427 7.72522 17.2895 7.76192 17.3251 7.80831C17.364 7.85247 17.3907 7.90596 17.4027 7.96356C17.412 8.02141 17.412 8.08037 17.4027 8.13822C17.392 8.1959 17.3724 8.25156 17.3445 8.30317C17.3267 8.34682 17.3003 8.38643 17.2669 8.41961Z"
                                                    fill="black" />
                                            </svg>

                                            <h6>ارسل استفسار</h6>
                                        </div>

                                    </div>
                                </form>
                            </div>





                            <hr style="border: 1px solid #00000057"class="mt-5">

                            <div class="Payments">

                                <div class="paymets_left_side">
                                    <svg width="25" height="24" viewBox="0 0 25 24" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M12.5 1.625L21.0594 3.52708C21.2907 3.5785 21.4976 3.70726 21.6458 3.89209C21.7941 4.07692 21.875 4.30679 21.875 4.54375V14.9469C21.8749 15.9758 21.6208 16.9887 21.1353 17.8958C20.6498 18.803 19.9478 19.5762 19.0917 20.1469L12.5 24.5417L5.90833 20.1469C5.05237 19.5763 4.35048 18.8032 3.86495 17.8963C3.37941 16.9894 3.12525 15.9766 3.125 14.9479V4.54375C3.12504 4.30679 3.20587 4.07692 3.35416 3.89209C3.50244 3.70726 3.70931 3.5785 3.94062 3.52708L12.5 1.625ZM12.5 3.75937L5.20833 5.37917V14.9469C5.20834 15.6328 5.37768 16.3081 5.70131 16.9128C6.02495 17.5175 6.49286 18.033 7.06354 18.4135L12.5 22.0385L17.9365 18.4135C18.507 18.0331 18.9748 17.5178 19.2984 16.9133C19.6221 16.3087 19.7915 15.6336 19.7917 14.9479V5.37917L12.5 3.75937ZM17.1375 9.14792L18.6115 10.6208L11.9823 17.25L7.5625 12.8302L9.03542 11.3573L11.9812 14.3031L17.1375 9.14792Z"
                                            fill="black" />
                                    </svg>
                                    <span>عمليات الدفع </span>
                                    <p class="mt-1">استمتع بعمليا دفع مشفرة وامنه</p>
                                </div>

                                <div class="paymets_right_side">
                                    <svg width="14" height="26" viewBox="0 0 14 26" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M1.13873 13.1786L12.0827 24.5522C12.2004 24.6975 12.3903 24.7646 12.5739 24.7258C12.7574 24.6869 12.9034 24.5487 12.9513 24.3684C12.9993 24.188 12.9412 23.9962 12.8009 23.8722L2.1938 12.8369L12.7958 1.80507C12.9582 1.60466 12.9389 1.31396 12.7515 1.13648C12.564 0.959001 12.271 0.954026 12.0776 1.12504L1.1336 12.4986C0.9535 12.6907 0.955752 12.9893 1.13873 13.1786Z"
                                            fill="black" stroke="black" stroke-width="1.71" />
                                    </svg>

                                </div>

                            </div>

                            <div class="Payments">

                                <div class="paymets_left_side">
                                    <svg width="21" height="17" viewBox="0 0 21 17" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M1.872 6.56234L1.07663 7.35772L0.28125 6.56234L1.07663 5.76697L1.872 6.56234ZM20.997 15.5623C20.997 15.8607 20.8785 16.1469 20.6675 16.3578C20.4565 16.5688 20.1704 16.6873 19.872 16.6873C19.5736 16.6873 19.2875 16.5688 19.0765 16.3578C18.8655 16.1469 18.747 15.8607 18.747 15.5623H20.997ZM6.70163 12.9827L1.07663 7.35772L2.66738 5.76697L8.29238 11.392L6.70163 12.9827ZM1.07663 5.76697L6.70163 0.141968L8.29238 1.73272L2.66738 7.35772L1.07663 5.76697ZM1.872 5.43734H13.122V7.68734H1.872V5.43734ZM20.997 13.3123V15.5623H18.747V13.3123H20.997ZM13.122 5.43734C15.2106 5.43734 17.2136 6.26703 18.6905 7.74388C20.1673 9.22073 20.997 11.2238 20.997 13.3123H18.747C18.747 11.8205 18.1544 10.3898 17.0995 9.33487C16.0446 8.27997 14.6138 7.68734 13.122 7.68734V5.43734Z"
                                            fill="black" />
                                    </svg>

                                    <span> الاسترجاع واسترداد الثمن </span>
                                    <p class="mt-1"> مؤهلة لاسترداد الاموال فى غضون 30 يوم من اتسلام المنتجات </p>
                                </div>

                                <div class="paymets_right_side">
                                    <svg width="14" height="26" viewBox="0 0 14 26" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M1.13873 13.1786L12.0827 24.5522C12.2004 24.6975 12.3903 24.7646 12.5739 24.7258C12.7574 24.6869 12.9034 24.5487 12.9513 24.3684C12.9993 24.188 12.9412 23.9962 12.8009 23.8722L2.1938 12.8369L12.7958 1.80507C12.9582 1.60466 12.9389 1.31396 12.7515 1.13648C12.564 0.959001 12.271 0.954026 12.0776 1.12504L1.1336 12.4986C0.9535 12.6907 0.955752 12.9893 1.13873 13.1786Z"
                                            fill="black" stroke="black" stroke-width="1.71" />
                                    </svg>

                                </div>

                            </div>
                            <div class="ps-product__specification">

                                <p @if (!$product->sku) style="display: none" @endif>
                                    <strong>{{ __('SKU') }}:</strong> <span
                                        id="product-sku">{{ $product->sku }}</span>
                                </p>
                                @if ($product->categories->count())
                                    <p class="categories"><strong> {{ __('Categories') }}:</strong>
                                        @foreach ($product->categories as $category)
                                            <a href="{{ $category->url }}">{!! BaseHelper::clean($category->name) !!}</a>
                                            @if (!$loop->last)
                                                ,
                                            @endif
                                        @endforeach
                                    </p>
                                @endif

                                @if ($product->tags->count())
                                    <p class="tags"><strong> {{ __('Tags') }}:</strong>
                                        @foreach ($product->tags as $tag)
                                            <a href="{{ $tag->url }}">{{ $tag->name }}</a>
                                            @if (!$loop->last)
                                                ,
                                            @endif
                                        @endforeach
                                    </p>
                                @endif
                            </div>

                        </div>

                    </div>
                </div>
                <div class="ps-product__content ps-tab-root">
                    <ul class="ps-tab-list">
                        <li class="active"><a href="#tab-description">{{ __('Description') }}</a></li>
                        @if (EcommerceHelper::isReviewEnabled())
                            <li><a href="#tab-reviews">{{ __('Reviews') }}&nbsp;({{ $product->reviews_count }})</a>
                            </li>
                        @endif
                        @if (is_plugin_active('marketplace') && $product->store_id)
                            <li><a href="#tab-vendor">{{ __('Vendor') }}</a></li>
                        @endif
                        @if (is_plugin_active('faq'))
                            @if (count($product->faq_items) > 0)
                                <li><a href="#tab-faq">{{ __('Questions and Answers') }}</a></li>
                            @endif
                        @endif
                    </ul>
                    <div class="ps-tabs">
                        <div class="ps-tab active" id="tab-description">
                            <div class="ps-document">
                                <div class="ck-content">
                                    {!! BaseHelper::clean($product->content) !!}
                                </div>
                                <br />
                                {!! apply_filters(BASE_FILTER_PUBLIC_COMMENT_AREA, null, $product) !!}
                            </div>
                        </div>
                        @if (EcommerceHelper::isReviewEnabled())
                            <div class="ps-tab" id="tab-reviews">
                                @include('plugins/ecommerce::themes.includes.reviews', [
                                    'reviewButtonClass' => 'ps-btn',
                                ])
                            </div>
                        @endif

                        @if (is_plugin_active('marketplace') && $product->store_id)
                            <div class="ps-tab" id="tab-vendor">
                                <h4>{{ $product->store->name }}</h4>
                                <div>
                                    {!! BaseHelper::clean($product->store->content) !!}
                                </div>

                                <a href="{{ $product->store->url }}" class="more-products">
                                    {{ __('More Products from :store', ['store' => $product->store->name]) }}
                                </a>
                            </div>
                        @endif

                        @if (is_plugin_active('faq') && count($product->faq_items) > 0)
                            <div class="ps-tab" id="tab-faq">
                                <div class="accordion" id="faq-accordion">
                                    @foreach ($product->faq_items as $faq)
                                        <div class="card">
                                            <div class="card-header" id="heading-faq-{{ $loop->index }}">
                                                <h2 class="mb-0">
                                                    <button
                                                        class="btn btn-link btn-block text-left @if (!$loop->first) collapsed @endif"
                                                        type="button" data-toggle="collapse"
                                                        data-target="#collapse-faq-{{ $loop->index }}"
                                                        aria-expanded="true"
                                                        aria-controls="collapse-faq-{{ $loop->index }}">
                                                        {!! BaseHelper::clean($faq[0]['value']) !!}
                                                    </button>
                                                </h2>
                                            </div>

                                            <div id="collapse-faq-{{ $loop->index }}"
                                                class="collapse @if ($loop->first) show @endif"
                                                aria-labelledby="heading-faq-{{ $loop->index }}"
                                                data-parent="#faq-accordion">
                                                <div class="card-body">
                                                    {!! BaseHelper::clean($faq[1]['value']) !!}
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>

    </div>

    @php
        $crossSellProducts = get_cross_sale_products($product, 7);
    @endphp
    @if (count($crossSellProducts) > 0)
        {!! Theme::partial('cross-sell-products', compact('crossSellProducts')) !!}
    @endif

    <div class="ps-section--default">
        <div class="ps-section__header">
            <h3>{{ __('Related products') }}</h3>
        </div>
        <div class="ps-section__content">
            <div class="ps-carousel--responsive owl-slider" data-owl-auto="true" data-owl-loop="false"
                data-owl-speed="10000" data-owl-gap="0" data-owl-nav="false" data-owl-dots="true" data-owl-item="7"
                data-owl-item-xs="2" data-owl-item-sm="2" data-owl-item-md="3" data-owl-item-lg="4"
                data-owl-item-xl="6" data-owl-duration="1000" data-owl-mousedrag="on">
                @foreach (get_related_products($product, 7) as $relatedProduct)
                    <div class="ps-product">
                        {!! Theme::partial('product-item', ['product' => $relatedProduct]) !!}
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
</div>
