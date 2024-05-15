<div class="ps-product-list mb-60">
    <div class="ps-container">
        <div class="ps-section__header">
            <h3>{{ $title }}</h3>
            <ul class="ps-section__links">
                @foreach ($productCollections as $item)
                    <li class="nav-item" role="presentation">
                        <a class="@if ($loop->first) active @endif" href="#"
                            data-url="{{ route('public.ajax.products-by-collection', $item->id, ['limit' => $limit]) }}"
                            role="tab" aria-controls="product-collections-product"
                            aria-selected="true">{{ $item->name }}</a>
                    </li>
                @endforeach
            </ul>
        </div>
        <div class="ps-section__content">
            <div class="half-circle-spinner loading-spinner d-none">
                <div class="circle circle-1"></div>
                <div class="circle circle-2"></div>
            </div>
            <div class="tab-pane fade show active" id="product-collections-product" role="tabpanel"
                aria-labelledby="product-collections-product-tab">
                <div class="ps-carousel--nav owl-slider" data-owl-auto="false" data-owl-loop="false"
                    data-owl-speed="10000" data-owl-gap="0" data-owl-nav="true" data-owl-dots="true" data-owl-item="7"
                    data-owl-item-xs="2" data-owl-item-sm="2" data-owl-item-md="3" data-owl-item-lg="4"
                    data-owl-item-xl="6" data-owl-duration="1000" data-owl-mousedrag="on">
                </div>
                <div class="row mt-3">

                    <div class="col-xl-3 col-md-3 col-sm-6 " style="margin-top:100px">
                        <div class="Links_Highest_rated_products_type ">

                            <div class="Links_Highest_rated_products_type_title ">
                                <h5>التصنيف من حيث</h5>
                            </div>

                            <div class="Most_popular active_Highest_rated_products_link">
                                <h5>الاكثر رواجا</h5>
                            </div>

                            <div class="best_seller">
                                <h5>الاكتر مبيعا</h5>
                            </div>

                            <div class="Best_rated">
                                <h5>الافضل تقييما</h5>
                            </div>
                        </div>
                    </div>
                    @foreach ($products as $product)
                    <div class="col-xl-3 col-md-3 col-sm-6 ">
                        <div class="ps-product">
                            {!! Theme::partial('product-item', compact('product')) !!}
                        </div>
                    </div>
                    @endforeach
            </div>

            </div>
        </div>
    </div>
</div>
</div>
