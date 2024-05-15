
@extends('web.layout.layout')
@section('content')


        <!------------------->

        <!-- Slider for Sale -->



        <div class="slider_sale mb-5 mt-5">
          <div id="carouselExampleIndicators" class="carousel slide">
            <div class="carousel-indicators">
              <button  type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active a" aria-current="true" aria-label="Slide 1" id="dot"></button>
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2" id="dot"></button>
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3" id="dot"></button>
            </div>

            <div class="carousel-inner">

              <div class="carousel-item active">


              <div class="top_layer">
                <img src="web/img/Rectangle 21452.png" alt="">
              </div>

              <div class="under_layer">

                <!-- sale_side -->
                <div class="sale_side">

                     <h1>SALE</h1>

                    <h6>up to</h6>

                  <h2> 30<span>%</span> </h2>

                  <button>تسوق الان</button>
                </div>


                <!-- Messaging -->
                <div class="Messaging">
                <select  class="form-select form-select-lg mb-3">
                  <option value="">المراسلة </option>
                  <option value="">المراسلة</option>
                  <option value="">المراسلة</option>
                  <option value="">المراسلة</option>

                </select>
                </div>


              </div>
              </div>

              <!---------------------->
              <div class="carousel-item ">


                <div class="top_layer">
                  <img src="web/img/Rectangle 21452.png" alt="">
                </div>

                <div class="under_layer">

                  <!-- sale_side -->
                  <div class="sale_side">
                    <h1>SALE</h1>

                    <h6>up to</h6>

                    <h2> 30<span>%</span> </h2>

                    <button>تسوق الان</button>
                  </div>


                  <!-- Messaging -->
                  <div class="Messaging">
                  <select  class="form-select form-select-lg mb-3">
                    <option value="">المراسلة </option>
                    <option value="">المراسلة</option>
                    <option value="">المراسلة</option>
                    <option value="">المراسلة</option>

                  </select>
                  </div>


                </div>
                </div>

                <div class="carousel-item ">


                  <div class="top_layer">
                    <img src="web/img/Rectangle 21452.png" alt="">
                  </div>

                  <div class="under_layer">

                    <!-- sale_side -->
                    <div class="sale_side">
                      <h1>SALE</h1>

                      <h6>up to</h6>

                      <h2> 30<span>%</span> </h2>

                      <button>تسوق الان</button>
                    </div>


                    <!-- Messaging -->
                    <div class="Messaging">
                    <select  class="form-select form-select-lg mb-3">
                      <option value="">المراسلة </option>
                      <option value="">المراسلة</option>
                      <option value="">المراسلة</option>
                      <option value="">المراسلة</option>

                    </select>
                    </div>


                  </div>
                  </div>


            </div>
            <button  class="carousel-control-prev"   type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev" >
              <span  class="prev-icon" aria-hidden="true"><i class="fa-solid fa-angle-left"></i></span>

               <span  class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
              <span  class="prev-icon" aria-hidden="true"><i class="fa-solid fa-angle-right"></i></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>

        </div>

        <!-- Search history -->
        <div class="Search_history">

          <div class="title_Search_history">

            <div> <h3>مستوحى من تاريخ بحثك</h3></div>

            <div >
              <span>   عرض المزيد </span>
              <i class="fa-solid fa-arrow-left-long pe-2"></i>

            </div>
          </div>

          <div class="row mt-3">

            <div class="col-xl-3 col-md-3 col-sm-6 mt-4">
              <div class="product">
                <img src="web/img/Mask.png">
                <h6>0.38 US $ - 0.11 US $</h6>
                <p>ادنى كمية طلب : 1000 قطعة</p>
              </div>
            </div>

            <div class="col-xl-3 col-md-3 col-sm-6 mt-4">
              <div class="product">
                <img src="web/img/Mask (1).png">
                <h6>0.38 US $ - 0.11 US $</h6>
                <p>ادنى كمية طلب : 1000 قطعة</p>
              </div>
            </div>

            <div class="col-xl-3 col-md-3 col-sm-6 mt-4">
              <div class="product">
                <img src="web/img/Mask (2).png">
                <h6>0.38 US $ - 0.11 US $</h6>
                <p>ادنى كمية طلب : 1000 قطعة</p>
              </div>
            </div>

            <div class="col-xl-3 col-md-3 col-sm-6 mt-4">
              <div class="product">
                <img src="web/img/Mask (3).png">
                <h6>0.38 US $ - 0.11 US $</h6>
                <p>ادنى كمية طلب : 1000 قطعة</p>
              </div>
            </div>


          </div>

        </div>


        <!-- Highest rated -->




        <div class="Highest_rated">

          <div class="title_Highest_rated">

            <div> <h3> الاعلى تصنيفا </h3></div>

            <div >
              <span>   عرض المزيد </span>
              <i class="fa-solid fa-arrow-left-long pe-2"></i>

            </div>
          </div>

          <div class="row mt-3">

            <div class="col-xl-3 col-md-3 col-sm-6 mt-4">
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




            <div class="col-xl-3 col-md-3 col-sm-6 mt-4">
              <div class="Highest_rated_products ">
                <img src="web/img/Highest_rate_img2.png">
                <p>كريم لليدين للعنايه بمستحضرات التجميل والعناية ياليدين الناعمة</p>
                <h6>0.38 US $ - 0.11 US $</h6>
                <p>ادنى كمية طلب : 1000 قطعة
                  <br>
                  درجة الرواج :4.6
                </p>
              </div>
            </div>

            <div class="col-xl-3 col-md-3 col-sm-6 mt-4">
              <div class="Highest_rated_products ">
                <img src="web/img/Highest_rate_img3.png">
                <p>كريم لليدين للعنايه بمستحضرات التجميل والعناية ياليدين الناعمة</p>
                <h6>0.38 US $ - 0.11 US $</h6>
                <p>ادنى كمية طلب : 1000 قطعة
                  <br>
                  درجة الرواج :4.6
                </p>
              </div>
            </div>

            <div class="col-xl-3 col-md-3 col-sm-6 mt-4">
              <div class="Highest_rated_products ">
                <img src="web/img/Highest_rate_img4.png">
                <p>كريم لليدين للعنايه بمستحضرات التجميل والعناية ياليدين الناعمة</p>
                <h6>0.38 US $ - 0.11 US $</h6>
                <p>ادنى كمية طلب : 1000 قطعة
                  <br>
                  درجة الرواج :4.6
                </p>
              </div>
            </div>


          </div>

        </div>



                <!-- recently arrived -->
                <div class="recently_arrived">

                  <div class="title_recently_arrived">

                    <div> <h3>  وصل حديثا</h3></div>

                    <div >
                      <span>   عرض المزيد </span>
                      <i class="fa-solid fa-arrow-left-long pe-2"></i>

                    </div>
                  </div>

                  <div class="row mt-3">

                    <div class="col-xl-3 col-md-3 col-sm-6 mt-4">
                      <div class="product">
                        <img src="web/img/Mask.png">
                        <h6>0.38 US $ - 0.11 US $</h6>
                        <p>ادنى كمية طلب : 1000 قطعة</p>
                      </div>
                    </div>

                    <div class="col-xl-3 col-md-3 col-sm-6 mt-4">
                      <div class="product">
                        <img src="web/img/Mask (1).png">
                        <h6>0.38 US $ - 0.11 US $</h6>
                        <p>ادنى كمية طلب : 1000 قطعة</p>
                      </div>
                    </div>

                    <div class="col-xl-3 col-md-3 col-sm-6 mt-4">
                      <div class="product">
                        <img src="web/img/Mask (2).png">
                        <h6>0.38 US $ - 0.11 US $</h6>
                        <p>ادنى كمية طلب : 1000 قطعة</p>
                      </div>
                    </div>

                    <div class="col-xl-3 col-md-3 col-sm-6 mt-4">
                      <div class="product">
                        <img src="web/img/Mask (3).png">
                        <h6>0.38 US $ - 0.11 US $</h6>
                        <p>ادنى كمية طلب : 1000 قطعة</p>
                      </div>
                    </div>


                  </div>

                </div>


                <!-- Highlight on product  -->

                <div class="Highlight">

                  <div class="row">

                    <div class="col-md-6">

                      <div class="Highest_discounts mt-4">

                        <div class="Highest_discounts_title">
                          <h3>تخفيضات تصل الى 40%</h3>
                        </div>

                        <div class="row">

                          <div class="col-sm-4">
                            <div class="product">
                              <img src="web/img/Highlight1.png">
                              <h6>1.3 US $ - 0.32 US $</h6>
                              <h5>0.38 US $ - 0.11 US $</h5>

                            </div>
                          </div>

                          <div class="col-sm-4">
                            <div class="product">
                              <img src="web/img/Highlight2.png">
                              <h6>1.3 US $ - 0.32 US $</h6>
                              <h5>0.38 US $ - 0.11 US $</h5>

                            </div>
                          </div>

                          <div class="col-sm-4">
                            <div class="product">
                              <img src="web/img/Highlight3.png">
                              <h6>1.3 US $ - 0.32 US $</h6>
                              <h5>0.38 US $ - 0.11 US $</h5>

                            </div>
                          </div>



                        </div>

                      </div>

                    </div>

                    <!--------------------->

                    <div class="col-md-6">


                      <div class="Top_selling_products mt-4">

                        <div class="Top_selling_products_title">
                          <h3>منتجات تحظى باعلى نسبة بيع </h3>
                        </div>

                        <div class="row">

                          <div class="col-sm-4">
                            <div class="product">
                              <img src="web/img/Top_selling_products.png">
                              <h6>0.38 US $ - 0.11 US $</h6>
                              <h4>ادنى كمية طلب : 1000 قطعة</h4>

                            </div>
                          </div>

                          <div class="col-sm-4">
                            <div class="product">
                              <img src="web/img/Top_selling_products2.png">
                              <h6>0.38 US $ - 0.11 US $</h6>
                              <h4>ادنى كمية طلب : 1000 قطعة</h4>

                            </div>
                          </div>

                          <div class="col-sm-4">
                            <div class="product">
                              <img src="web/img/Mask.png">
                              <h6>0.38 US $ - 0.11 US $</h6>
                              <h4>ادنى كمية طلب : 1000 قطعة</h4>

                            </div>
                          </div>



                        </div>

                      </div>


                    </div>



                  </div>


                </div>


                <!-- product  Recommended for you  -->

                <div class="product_Recommended">
                  <div class="product_Recommended_title">
                    <h3>موصى لك بها</h3>
                  </div>

                  <swiper-container class="mySwiper"  keyboard="true"   slides-per-view="6"
                  space-between="10" free-mode="true " navigation="true">

                  <swiper-slide>
                    <div class="product">
                      <img src="web/img/product_Recommended.png" >
                     <h6>0.38 US $ - 0.11 US $</h6>
                      <p>ادنى كمية طلب : 1000 قطعة</p>
                    </div>

                  </swiper-slide>


                  <swiper-slide>
                    <div class="product">
                      <img src="web/img/product_Recommended2.png" >
                     <h6>0.38 US $ - 0.11 US $</h6>
                      <p>ادنى كمية طلب : 1000 قطعة</p>
                    </div>
                  </swiper-slide>


                  <swiper-slide>

                    <div class="product">
                      <img src="web/img/product_Recommended3.png" >
                      <h6>0.38 US $ - 0.11 US $</h6>
                      <p>ادنى كمية طلب : 1000 قطعة</p>
                    </div>


                  </swiper-slide>


                  <swiper-slide>

                    <div class="product">
                    <img src="web/img/product_Recommended4.png" >
                     <h6>0.38 US $ - 0.11 US $</h6>
                      <p>ادنى كمية طلب : 1000 قطعة</p>
                    </div>


                  </swiper-slide>



                  <swiper-slide>
                    <div class="product">
                      <img src="web/img/product_Recommended5.png" >
                      <h6>0.38 US $ - 0.11 US $</h6>
                      <p>ادنى كمية طلب : 1000 قطعة</p>
                    </div>


                  </swiper-slide>


                  <swiper-slide>
                     <div class="product">
                      <img src="web/img/product_Recommended6.png" >
                      <h6>0.38 US $ - 0.11 US $</h6>
                      <p>ادنى كمية طلب : 1000 قطعة</p>
                    </div>
                  </swiper-slide>


                  <swiper-slide>

                    <div class="product">
                      <img src="web/img/Mask (1).png" >
                      <h6>0.38 US $ - 0.11 US $</h6>
                    <p>ادنى كمية طلب : 1000 قطعة</p>
                  </div>
                </swiper-slide>

                  <swiper-slide>
                   <div class="product">
                    <img src="web/img/Mask.png" >
                   <h6>0.38 US $ - 0.11 US $</h6>
                    <p>ادنى كمية طلب : 1000 قطعة</p>
                  </div>
                </swiper-slide>



                  <swiper-slide>
                    <div class="product">
                      <img src="web/img/Mask (2).png" >
                      <h6>0.38 US $ - 0.11 US $</h6>
                    <p>ادنى كمية طلب : 1000 قطعة</p>
                  </div>
                </swiper-slide>

              </swiper-container>


               <!--Product For you only -->
                   <div class="Product_For_you">

                    <!-- Product_For_you_title -->
                    <div class="Product_For_you_title">
                      <h3>لك لوحدك</h3>
                    </div>

                    <!-- Product_For_you_details -->
                    <div class="row">

                      <div class="col-md-2 col-sm-4">

                        <div class="Product_For_you_details">

                          <div class="img_icons">
                            <img src="web/img/Product_For_you.png" >

                            <div class="icons ">
                              <svg width="22" height="20" viewBox="0 0 12 11" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M6.12366 10.0131L6.1221 10.0139C6.1002 10.0257 6.07572 10.0319 6.05086 10.0319C6.02599 10.0319 6.00152 10.0257 5.97962 10.0139L5.97805 10.0131C5.8717 9.95677 4.47935 9.19783 3.11763 8.0053C1.74185 6.80045 0.470521 5.21641 0.47045 3.51414C0.471379 2.72674 0.784581 1.97186 1.34136 1.41509C1.89813 0.858312 2.65301 0.54511 3.44041 0.54418C4.4404 0.544221 5.30265 0.972923 5.83708 1.68471L6.05086 1.96942L6.26463 1.68471C6.79906 0.972923 7.66132 0.544221 8.66131 0.54418C9.4487 0.54511 10.2036 0.858312 10.7604 1.41509C11.3172 1.9719 11.6304 2.72684 11.6313 3.51429C11.6311 5.21651 10.3598 6.80049 8.98409 8.0053C7.62236 9.19783 6.23001 9.95677 6.12366 10.0131Z" stroke="black" stroke-width="0.53465"/>
                                </svg>
                                <br>
                                <svg width="24" height="23" class="mt-1" viewBox="0 0 19 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <circle cx="9.03125" cy="10.0093" r="9.03125" fill="white"/>
                                  <path d="M7.59756 10.8514H3.37695V12.0555H7.59756V13.8618L9.99987 11.4534L7.59756 9.04512V10.8514ZM11.198 10.2493V8.44303H15.4186V7.23887H11.198V5.43262L8.7957 7.84095L11.198 10.2493Z" fill="black"/>
                                  </svg>


                            </div>

                          </div>

                          <div class="details">
                            <p>كريم لليدين للعنايه بمستحضرات التجميل والعناية ياليدين الناعمة</p>
                            <h5>0.38 US $ - 0.11 US $</h5>
                            <h6>ادنى كميةطلب :100قطعة</h6>
                          </div>


                        </div>


                      </div>

                      <!----------------------------->


                      <div class="col-md-2 col-sm-4">

                        <div class="Product_For_you_details">

                          <div class="img_icons">
                            <img src="web/img/Product_For_you2.png" >

                            <div class="icons ">
                              <svg width="22" height="20" viewBox="0 0 12 11" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M6.12366 10.0131L6.1221 10.0139C6.1002 10.0257 6.07572 10.0319 6.05086 10.0319C6.02599 10.0319 6.00152 10.0257 5.97962 10.0139L5.97805 10.0131C5.8717 9.95677 4.47935 9.19783 3.11763 8.0053C1.74185 6.80045 0.470521 5.21641 0.47045 3.51414C0.471379 2.72674 0.784581 1.97186 1.34136 1.41509C1.89813 0.858312 2.65301 0.54511 3.44041 0.54418C4.4404 0.544221 5.30265 0.972923 5.83708 1.68471L6.05086 1.96942L6.26463 1.68471C6.79906 0.972923 7.66132 0.544221 8.66131 0.54418C9.4487 0.54511 10.2036 0.858312 10.7604 1.41509C11.3172 1.9719 11.6304 2.72684 11.6313 3.51429C11.6311 5.21651 10.3598 6.80049 8.98409 8.0053C7.62236 9.19783 6.23001 9.95677 6.12366 10.0131Z" stroke="black" stroke-width="0.53465"/>
                                </svg>
                                <br>
                                <svg width="24" height="23" class="mt-1" viewBox="0 0 19 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <circle cx="9.03125" cy="10.0093" r="9.03125" fill="white"/>
                                  <path d="M7.59756 10.8514H3.37695V12.0555H7.59756V13.8618L9.99987 11.4534L7.59756 9.04512V10.8514ZM11.198 10.2493V8.44303H15.4186V7.23887H11.198V5.43262L8.7957 7.84095L11.198 10.2493Z" fill="black"/>
                                  </svg>


                            </div>

                          </div>

                          <div class="details">
                            <p>كريم لليدين للعنايه بمستحضرات التجميل والعناية ياليدين الناعمة</p>
                            <h5>0.38 US $ - 0.11 US $</h5>
                            <h6>ادنى كميةطلب :100قطعة</h6>
                          </div>


                        </div>


                      </div>

                      <!----------------------------->

                      <div class="col-md-2 col-sm-4">

                        <div class="Product_For_you_details">

                          <div class="img_icons">
                            <img src="web/img/Product_For_you3.png" >

                            <div class="icons ">
                              <svg width="22" height="20" viewBox="0 0 12 11" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M6.12366 10.0131L6.1221 10.0139C6.1002 10.0257 6.07572 10.0319 6.05086 10.0319C6.02599 10.0319 6.00152 10.0257 5.97962 10.0139L5.97805 10.0131C5.8717 9.95677 4.47935 9.19783 3.11763 8.0053C1.74185 6.80045 0.470521 5.21641 0.47045 3.51414C0.471379 2.72674 0.784581 1.97186 1.34136 1.41509C1.89813 0.858312 2.65301 0.54511 3.44041 0.54418C4.4404 0.544221 5.30265 0.972923 5.83708 1.68471L6.05086 1.96942L6.26463 1.68471C6.79906 0.972923 7.66132 0.544221 8.66131 0.54418C9.4487 0.54511 10.2036 0.858312 10.7604 1.41509C11.3172 1.9719 11.6304 2.72684 11.6313 3.51429C11.6311 5.21651 10.3598 6.80049 8.98409 8.0053C7.62236 9.19783 6.23001 9.95677 6.12366 10.0131Z" stroke="black" stroke-width="0.53465"/>
                                </svg>
                                <br>
                                <svg width="24" height="23" class="mt-1" viewBox="0 0 19 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <circle cx="9.03125" cy="10.0093" r="9.03125" fill="white"/>
                                  <path d="M7.59756 10.8514H3.37695V12.0555H7.59756V13.8618L9.99987 11.4534L7.59756 9.04512V10.8514ZM11.198 10.2493V8.44303H15.4186V7.23887H11.198V5.43262L8.7957 7.84095L11.198 10.2493Z" fill="black"/>
                                  </svg>


                            </div>

                          </div>

                          <div class="details">
                            <p>كريم لليدين للعنايه بمستحضرات التجميل والعناية ياليدين الناعمة</p>
                            <h5>0.38 US $ - 0.11 US $</h5>
                            <h6>ادنى كميةطلب :100قطعة</h6>
                          </div>


                        </div>


                      </div>

                      <!----------------------------->

                      <div class="col-md-2 col-sm-4">

                        <div class="Product_For_you_details">

                          <div class="img_icons">
                            <img src="web/img/Product_For_you4.png" >

                            <div class="icons ">
                              <svg width="22" height="20" viewBox="0 0 12 11" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M6.12366 10.0131L6.1221 10.0139C6.1002 10.0257 6.07572 10.0319 6.05086 10.0319C6.02599 10.0319 6.00152 10.0257 5.97962 10.0139L5.97805 10.0131C5.8717 9.95677 4.47935 9.19783 3.11763 8.0053C1.74185 6.80045 0.470521 5.21641 0.47045 3.51414C0.471379 2.72674 0.784581 1.97186 1.34136 1.41509C1.89813 0.858312 2.65301 0.54511 3.44041 0.54418C4.4404 0.544221 5.30265 0.972923 5.83708 1.68471L6.05086 1.96942L6.26463 1.68471C6.79906 0.972923 7.66132 0.544221 8.66131 0.54418C9.4487 0.54511 10.2036 0.858312 10.7604 1.41509C11.3172 1.9719 11.6304 2.72684 11.6313 3.51429C11.6311 5.21651 10.3598 6.80049 8.98409 8.0053C7.62236 9.19783 6.23001 9.95677 6.12366 10.0131Z" stroke="black" stroke-width="0.53465"/>
                                </svg>
                                <br>
                                <svg width="24" height="23" class="mt-1" viewBox="0 0 19 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <circle cx="9.03125" cy="10.0093" r="9.03125" fill="white"/>
                                  <path d="M7.59756 10.8514H3.37695V12.0555H7.59756V13.8618L9.99987 11.4534L7.59756 9.04512V10.8514ZM11.198 10.2493V8.44303H15.4186V7.23887H11.198V5.43262L8.7957 7.84095L11.198 10.2493Z" fill="black"/>
                                  </svg>


                            </div>

                          </div>

                          <div class="details">
                            <p>كريم لليدين للعنايه بمستحضرات التجميل والعناية ياليدين الناعمة</p>
                            <h5>0.38 US $ - 0.11 US $</h5>
                            <h6>ادنى كميةطلب :100قطعة</h6>
                          </div>


                        </div>


                      </div>

                      <!----------------------------->

                      <div class="col-md-2 col-sm-4">

                        <div class="Product_For_you_details">

                          <div class="img_icons">
                            <img src="web/img/Product_For_you5.png" >

                            <div class="icons ">
                              <svg width="22" height="20" viewBox="0 0 12 11" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M6.12366 10.0131L6.1221 10.0139C6.1002 10.0257 6.07572 10.0319 6.05086 10.0319C6.02599 10.0319 6.00152 10.0257 5.97962 10.0139L5.97805 10.0131C5.8717 9.95677 4.47935 9.19783 3.11763 8.0053C1.74185 6.80045 0.470521 5.21641 0.47045 3.51414C0.471379 2.72674 0.784581 1.97186 1.34136 1.41509C1.89813 0.858312 2.65301 0.54511 3.44041 0.54418C4.4404 0.544221 5.30265 0.972923 5.83708 1.68471L6.05086 1.96942L6.26463 1.68471C6.79906 0.972923 7.66132 0.544221 8.66131 0.54418C9.4487 0.54511 10.2036 0.858312 10.7604 1.41509C11.3172 1.9719 11.6304 2.72684 11.6313 3.51429C11.6311 5.21651 10.3598 6.80049 8.98409 8.0053C7.62236 9.19783 6.23001 9.95677 6.12366 10.0131Z" stroke="black" stroke-width="0.53465"/>
                                </svg>
                                <br>
                                <svg width="24" height="23" class="mt-1" viewBox="0 0 19 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <circle cx="9.03125" cy="10.0093" r="9.03125" fill="white"/>
                                  <path d="M7.59756 10.8514H3.37695V12.0555H7.59756V13.8618L9.99987 11.4534L7.59756 9.04512V10.8514ZM11.198 10.2493V8.44303H15.4186V7.23887H11.198V5.43262L8.7957 7.84095L11.198 10.2493Z" fill="black"/>
                                  </svg>


                            </div>

                          </div>

                          <div class="details">
                            <p>كريم لليدين للعنايه بمستحضرات التجميل والعناية ياليدين الناعمة</p>
                            <h5>0.38 US $ - 0.11 US $</h5>
                            <h6>ادنى كميةطلب :100قطعة</h6>
                          </div>


                        </div>


                      </div>

                      <!----------------------------->

                      <div class="col-md-2 col-sm-4">

                        <div class="Product_For_you_details">

                          <div class="img_icons">
                            <img src="web/img/Product_For_you6.png" >

                            <div class="icons ">
                              <svg width="22" height="20" viewBox="0 0 12 11" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M6.12366 10.0131L6.1221 10.0139C6.1002 10.0257 6.07572 10.0319 6.05086 10.0319C6.02599 10.0319 6.00152 10.0257 5.97962 10.0139L5.97805 10.0131C5.8717 9.95677 4.47935 9.19783 3.11763 8.0053C1.74185 6.80045 0.470521 5.21641 0.47045 3.51414C0.471379 2.72674 0.784581 1.97186 1.34136 1.41509C1.89813 0.858312 2.65301 0.54511 3.44041 0.54418C4.4404 0.544221 5.30265 0.972923 5.83708 1.68471L6.05086 1.96942L6.26463 1.68471C6.79906 0.972923 7.66132 0.544221 8.66131 0.54418C9.4487 0.54511 10.2036 0.858312 10.7604 1.41509C11.3172 1.9719 11.6304 2.72684 11.6313 3.51429C11.6311 5.21651 10.3598 6.80049 8.98409 8.0053C7.62236 9.19783 6.23001 9.95677 6.12366 10.0131Z" stroke="black" stroke-width="0.53465"/>
                                </svg>
                                <br>
                                <svg width="24" height="23" class="mt-1" viewBox="0 0 19 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <circle cx="9.03125" cy="10.0093" r="9.03125" fill="white"/>
                                  <path d="M7.59756 10.8514H3.37695V12.0555H7.59756V13.8618L9.99987 11.4534L7.59756 9.04512V10.8514ZM11.198 10.2493V8.44303H15.4186V7.23887H11.198V5.43262L8.7957 7.84095L11.198 10.2493Z" fill="black"/>
                                  </svg>


                            </div>

                          </div>

                          <div class="details">
                            <p>كريم لليدين للعنايه بمستحضرات التجميل والعناية ياليدين الناعمة</p>
                            <h5>0.38 US $ - 0.11 US $</h5>
                            <h6>ادنى كميةطلب :100قطعة</h6>
                          </div>


                        </div>


                      </div>

                      <!----------------------------->

                      <div class="col-md-2 col-sm-4">

                        <div class="Product_For_you_details">

                          <div class="img_icons">
                            <img src="web/img/Product_For_you7.png" >

                            <div class="icons ">
                              <svg width="22" height="20" viewBox="0 0 12 11" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M6.12366 10.0131L6.1221 10.0139C6.1002 10.0257 6.07572 10.0319 6.05086 10.0319C6.02599 10.0319 6.00152 10.0257 5.97962 10.0139L5.97805 10.0131C5.8717 9.95677 4.47935 9.19783 3.11763 8.0053C1.74185 6.80045 0.470521 5.21641 0.47045 3.51414C0.471379 2.72674 0.784581 1.97186 1.34136 1.41509C1.89813 0.858312 2.65301 0.54511 3.44041 0.54418C4.4404 0.544221 5.30265 0.972923 5.83708 1.68471L6.05086 1.96942L6.26463 1.68471C6.79906 0.972923 7.66132 0.544221 8.66131 0.54418C9.4487 0.54511 10.2036 0.858312 10.7604 1.41509C11.3172 1.9719 11.6304 2.72684 11.6313 3.51429C11.6311 5.21651 10.3598 6.80049 8.98409 8.0053C7.62236 9.19783 6.23001 9.95677 6.12366 10.0131Z" stroke="black" stroke-width="0.53465"/>
                                </svg>
                                <br>
                                <svg width="24" height="23" class="mt-1" viewBox="0 0 19 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <circle cx="9.03125" cy="10.0093" r="9.03125" fill="white"/>
                                  <path d="M7.59756 10.8514H3.37695V12.0555H7.59756V13.8618L9.99987 11.4534L7.59756 9.04512V10.8514ZM11.198 10.2493V8.44303H15.4186V7.23887H11.198V5.43262L8.7957 7.84095L11.198 10.2493Z" fill="black"/>
                                  </svg>


                            </div>

                          </div>

                          <div class="details">
                            <p>كريم لليدين للعنايه بمستحضرات التجميل والعناية ياليدين الناعمة</p>
                            <h5>0.38 US $ - 0.11 US $</h5>
                            <h6>ادنى كميةطلب :100قطعة</h6>
                          </div>


                        </div>


                      </div>

                      <!----------------------------->

                      <div class="col-md-2 col-sm-4">

                        <div class="Product_For_you_details">

                          <div class="img_icons">
                            <img src="web/img/Product_For_you8.png" >

                            <div class="icons ">
                              <svg width="22" height="20" viewBox="0 0 12 11" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M6.12366 10.0131L6.1221 10.0139C6.1002 10.0257 6.07572 10.0319 6.05086 10.0319C6.02599 10.0319 6.00152 10.0257 5.97962 10.0139L5.97805 10.0131C5.8717 9.95677 4.47935 9.19783 3.11763 8.0053C1.74185 6.80045 0.470521 5.21641 0.47045 3.51414C0.471379 2.72674 0.784581 1.97186 1.34136 1.41509C1.89813 0.858312 2.65301 0.54511 3.44041 0.54418C4.4404 0.544221 5.30265 0.972923 5.83708 1.68471L6.05086 1.96942L6.26463 1.68471C6.79906 0.972923 7.66132 0.544221 8.66131 0.54418C9.4487 0.54511 10.2036 0.858312 10.7604 1.41509C11.3172 1.9719 11.6304 2.72684 11.6313 3.51429C11.6311 5.21651 10.3598 6.80049 8.98409 8.0053C7.62236 9.19783 6.23001 9.95677 6.12366 10.0131Z" stroke="black" stroke-width="0.53465"/>
                                </svg>
                                <br>
                                <svg width="24" height="23" class="mt-1" viewBox="0 0 19 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <circle cx="9.03125" cy="10.0093" r="9.03125" fill="white"/>
                                  <path d="M7.59756 10.8514H3.37695V12.0555H7.59756V13.8618L9.99987 11.4534L7.59756 9.04512V10.8514ZM11.198 10.2493V8.44303H15.4186V7.23887H11.198V5.43262L8.7957 7.84095L11.198 10.2493Z" fill="black"/>
                                  </svg>


                            </div>

                          </div>

                          <div class="details">
                            <p>كريم لليدين للعنايه بمستحضرات التجميل والعناية ياليدين الناعمة</p>
                            <h5>0.38 US $ - 0.11 US $</h5>
                            <h6>ادنى كميةطلب :100قطعة</h6>
                          </div>


                        </div>


                      </div>

                      <!----------------------------->

                      <div class="col-md-2 col-sm-4">

                        <div class="Product_For_you_details">

                          <div class="img_icons">
                            <img src="web/img/Product_For_you9.png" >

                            <div class="icons ">
                              <svg width="22" height="20" viewBox="0 0 12 11" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M6.12366 10.0131L6.1221 10.0139C6.1002 10.0257 6.07572 10.0319 6.05086 10.0319C6.02599 10.0319 6.00152 10.0257 5.97962 10.0139L5.97805 10.0131C5.8717 9.95677 4.47935 9.19783 3.11763 8.0053C1.74185 6.80045 0.470521 5.21641 0.47045 3.51414C0.471379 2.72674 0.784581 1.97186 1.34136 1.41509C1.89813 0.858312 2.65301 0.54511 3.44041 0.54418C4.4404 0.544221 5.30265 0.972923 5.83708 1.68471L6.05086 1.96942L6.26463 1.68471C6.79906 0.972923 7.66132 0.544221 8.66131 0.54418C9.4487 0.54511 10.2036 0.858312 10.7604 1.41509C11.3172 1.9719 11.6304 2.72684 11.6313 3.51429C11.6311 5.21651 10.3598 6.80049 8.98409 8.0053C7.62236 9.19783 6.23001 9.95677 6.12366 10.0131Z" stroke="black" stroke-width="0.53465"/>
                                </svg>
                                <br>
                                <svg width="24" height="23" class="mt-1" viewBox="0 0 19 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <circle cx="9.03125" cy="10.0093" r="9.03125" fill="white"/>
                                  <path d="M7.59756 10.8514H3.37695V12.0555H7.59756V13.8618L9.99987 11.4534L7.59756 9.04512V10.8514ZM11.198 10.2493V8.44303H15.4186V7.23887H11.198V5.43262L8.7957 7.84095L11.198 10.2493Z" fill="black"/>
                                  </svg>


                            </div>

                          </div>

                          <div class="details">
                            <p>كريم لليدين للعنايه بمستحضرات التجميل والعناية ياليدين الناعمة</p>
                            <h5>0.38 US $ - 0.11 US $</h5>
                            <h6>ادنى كميةطلب :100قطعة</h6>
                          </div>


                        </div>


                      </div>

                      <!----------------------------->

                      <div class="col-md-2 col-sm-4">

                        <div class="Product_For_you_details">

                          <div class="img_icons">
                            <img src="web/img/Product_For_you10.png" >

                            <div class="icons ">
                              <svg width="22" height="20" viewBox="0 0 12 11" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M6.12366 10.0131L6.1221 10.0139C6.1002 10.0257 6.07572 10.0319 6.05086 10.0319C6.02599 10.0319 6.00152 10.0257 5.97962 10.0139L5.97805 10.0131C5.8717 9.95677 4.47935 9.19783 3.11763 8.0053C1.74185 6.80045 0.470521 5.21641 0.47045 3.51414C0.471379 2.72674 0.784581 1.97186 1.34136 1.41509C1.89813 0.858312 2.65301 0.54511 3.44041 0.54418C4.4404 0.544221 5.30265 0.972923 5.83708 1.68471L6.05086 1.96942L6.26463 1.68471C6.79906 0.972923 7.66132 0.544221 8.66131 0.54418C9.4487 0.54511 10.2036 0.858312 10.7604 1.41509C11.3172 1.9719 11.6304 2.72684 11.6313 3.51429C11.6311 5.21651 10.3598 6.80049 8.98409 8.0053C7.62236 9.19783 6.23001 9.95677 6.12366 10.0131Z" stroke="black" stroke-width="0.53465"/>
                                </svg>
                                <br>
                                <svg width="24" height="23" class="mt-1" viewBox="0 0 19 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <circle cx="9.03125" cy="10.0093" r="9.03125" fill="white"/>
                                  <path d="M7.59756 10.8514H3.37695V12.0555H7.59756V13.8618L9.99987 11.4534L7.59756 9.04512V10.8514ZM11.198 10.2493V8.44303H15.4186V7.23887H11.198V5.43262L8.7957 7.84095L11.198 10.2493Z" fill="black"/>
                                  </svg>


                            </div>

                          </div>

                          <div class="details">
                            <p>كريم لليدين للعنايه بمستحضرات التجميل والعناية ياليدين الناعمة</p>
                            <h5>0.38 US $ - 0.11 US $</h5>
                            <h6>ادنى كميةطلب :100قطعة</h6>
                          </div>


                        </div>


                      </div>

                      <!----------------------------->

                      <div class="col-md-2 col-sm-4">

                        <div class="Product_For_you_details">

                          <div class="img_icons">
                            <img src="web/img/Product_For_you11.png" >

                            <div class="icons ">
                              <svg width="22" height="20" viewBox="0 0 12 11" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M6.12366 10.0131L6.1221 10.0139C6.1002 10.0257 6.07572 10.0319 6.05086 10.0319C6.02599 10.0319 6.00152 10.0257 5.97962 10.0139L5.97805 10.0131C5.8717 9.95677 4.47935 9.19783 3.11763 8.0053C1.74185 6.80045 0.470521 5.21641 0.47045 3.51414C0.471379 2.72674 0.784581 1.97186 1.34136 1.41509C1.89813 0.858312 2.65301 0.54511 3.44041 0.54418C4.4404 0.544221 5.30265 0.972923 5.83708 1.68471L6.05086 1.96942L6.26463 1.68471C6.79906 0.972923 7.66132 0.544221 8.66131 0.54418C9.4487 0.54511 10.2036 0.858312 10.7604 1.41509C11.3172 1.9719 11.6304 2.72684 11.6313 3.51429C11.6311 5.21651 10.3598 6.80049 8.98409 8.0053C7.62236 9.19783 6.23001 9.95677 6.12366 10.0131Z" stroke="black" stroke-width="0.53465"/>
                                </svg>
                                <br>
                                <svg width="24" height="23" class="mt-1" viewBox="0 0 19 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <circle cx="9.03125" cy="10.0093" r="9.03125" fill="white"/>
                                  <path d="M7.59756 10.8514H3.37695V12.0555H7.59756V13.8618L9.99987 11.4534L7.59756 9.04512V10.8514ZM11.198 10.2493V8.44303H15.4186V7.23887H11.198V5.43262L8.7957 7.84095L11.198 10.2493Z" fill="black"/>
                                  </svg>


                            </div>

                          </div>

                          <div class="details">
                            <p>كريم لليدين للعنايه بمستحضرات التجميل والعناية ياليدين الناعمة</p>
                            <h5>0.38 US $ - 0.11 US $</h5>
                            <h6>ادنى كميةطلب :100قطعة</h6>
                          </div>


                        </div>


                      </div>

                      <!----------------------------->

                      <div class="col-md-2 col-sm-4">

                        <div class="Product_For_you_details">

                          <div class="img_icons">
                            <img src="web/img/Product_For_you12.png" >

                            <div class="icons ">
                              <svg width="22" height="20" viewBox="0 0 12 11" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M6.12366 10.0131L6.1221 10.0139C6.1002 10.0257 6.07572 10.0319 6.05086 10.0319C6.02599 10.0319 6.00152 10.0257 5.97962 10.0139L5.97805 10.0131C5.8717 9.95677 4.47935 9.19783 3.11763 8.0053C1.74185 6.80045 0.470521 5.21641 0.47045 3.51414C0.471379 2.72674 0.784581 1.97186 1.34136 1.41509C1.89813 0.858312 2.65301 0.54511 3.44041 0.54418C4.4404 0.544221 5.30265 0.972923 5.83708 1.68471L6.05086 1.96942L6.26463 1.68471C6.79906 0.972923 7.66132 0.544221 8.66131 0.54418C9.4487 0.54511 10.2036 0.858312 10.7604 1.41509C11.3172 1.9719 11.6304 2.72684 11.6313 3.51429C11.6311 5.21651 10.3598 6.80049 8.98409 8.0053C7.62236 9.19783 6.23001 9.95677 6.12366 10.0131Z" stroke="black" stroke-width="0.53465"/>
                                </svg>
                                <br>
                                <svg width="24" height="23" class="mt-1" viewBox="0 0 19 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <circle cx="9.03125" cy="10.0093" r="9.03125" fill="white"/>
                                  <path d="M7.59756 10.8514H3.37695V12.0555H7.59756V13.8618L9.99987 11.4534L7.59756 9.04512V10.8514ZM11.198 10.2493V8.44303H15.4186V7.23887H11.198V5.43262L8.7957 7.84095L11.198 10.2493Z" fill="black"/>
                                  </svg>


                            </div>

                          </div>

                          <div class="details">
                            <p>كريم لليدين للعنايه بمستحضرات التجميل والعناية ياليدين الناعمة</p>
                            <h5>0.38 US $ - 0.11 US $</h5>
                            <h6>ادنى كميةطلب :100قطعة</h6>
                          </div>


                        </div>


                      </div>

                      <!----------------------------->

                      <div class="col-md-2 col-sm-4">

                        <div class="Product_For_you_details">

                          <div class="img_icons">
                            <img src="web/img/Product_For_you13.png">

                            <div class="icons ">
                              <svg width="22" height="20" viewBox="0 0 12 11" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M6.12366 10.0131L6.1221 10.0139C6.1002 10.0257 6.07572 10.0319 6.05086 10.0319C6.02599 10.0319 6.00152 10.0257 5.97962 10.0139L5.97805 10.0131C5.8717 9.95677 4.47935 9.19783 3.11763 8.0053C1.74185 6.80045 0.470521 5.21641 0.47045 3.51414C0.471379 2.72674 0.784581 1.97186 1.34136 1.41509C1.89813 0.858312 2.65301 0.54511 3.44041 0.54418C4.4404 0.544221 5.30265 0.972923 5.83708 1.68471L6.05086 1.96942L6.26463 1.68471C6.79906 0.972923 7.66132 0.544221 8.66131 0.54418C9.4487 0.54511 10.2036 0.858312 10.7604 1.41509C11.3172 1.9719 11.6304 2.72684 11.6313 3.51429C11.6311 5.21651 10.3598 6.80049 8.98409 8.0053C7.62236 9.19783 6.23001 9.95677 6.12366 10.0131Z" stroke="black" stroke-width="0.53465"/>
                                </svg>
                                <br>
                                <svg width="24" height="23" class="mt-1" viewBox="0 0 19 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <circle cx="9.03125" cy="10.0093" r="9.03125" fill="white"/>
                                  <path d="M7.59756 10.8514H3.37695V12.0555H7.59756V13.8618L9.99987 11.4534L7.59756 9.04512V10.8514ZM11.198 10.2493V8.44303H15.4186V7.23887H11.198V5.43262L8.7957 7.84095L11.198 10.2493Z" fill="black"/>
                                  </svg>


                            </div>

                          </div>

                          <div class="details">
                            <p>كريم لليدين للعنايه بمستحضرات التجميل والعناية ياليدين الناعمة</p>
                            <h5>0.38 US $ - 0.11 US $</h5>
                            <h6>ادنى كميةطلب :100قطعة</h6>
                          </div>


                        </div>


                      </div>

                      <!----------------------------->

                      <div class="col-md-2 col-sm-4">

                        <div class="Product_For_you_details">

                          <div class="img_icons">
                            <img src="web/img/Product_For_you14.png" >

                            <div class="icons ">
                              <svg width="22" height="20" viewBox="0 0 12 11" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M6.12366 10.0131L6.1221 10.0139C6.1002 10.0257 6.07572 10.0319 6.05086 10.0319C6.02599 10.0319 6.00152 10.0257 5.97962 10.0139L5.97805 10.0131C5.8717 9.95677 4.47935 9.19783 3.11763 8.0053C1.74185 6.80045 0.470521 5.21641 0.47045 3.51414C0.471379 2.72674 0.784581 1.97186 1.34136 1.41509C1.89813 0.858312 2.65301 0.54511 3.44041 0.54418C4.4404 0.544221 5.30265 0.972923 5.83708 1.68471L6.05086 1.96942L6.26463 1.68471C6.79906 0.972923 7.66132 0.544221 8.66131 0.54418C9.4487 0.54511 10.2036 0.858312 10.7604 1.41509C11.3172 1.9719 11.6304 2.72684 11.6313 3.51429C11.6311 5.21651 10.3598 6.80049 8.98409 8.0053C7.62236 9.19783 6.23001 9.95677 6.12366 10.0131Z" stroke="black" stroke-width="0.53465"/>
                                </svg>
                                <br>
                                <svg width="24" height="23" class="mt-1" viewBox="0 0 19 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <circle cx="9.03125" cy="10.0093" r="9.03125" fill="white"/>
                                  <path d="M7.59756 10.8514H3.37695V12.0555H7.59756V13.8618L9.99987 11.4534L7.59756 9.04512V10.8514ZM11.198 10.2493V8.44303H15.4186V7.23887H11.198V5.43262L8.7957 7.84095L11.198 10.2493Z" fill="black"/>
                                  </svg>


                            </div>

                          </div>

                          <div class="details">
                            <p>كريم لليدين للعنايه بمستحضرات التجميل والعناية ياليدين الناعمة</p>
                            <h5>0.38 US $ - 0.11 US $</h5>
                            <h6>ادنى كميةطلب :100قطعة</h6>
                          </div>


                        </div>


                      </div>

                      <!----------------------------->

                      <div class="col-md-2 col-sm-4">

                        <div class="Product_For_you_details">

                          <div class="img_icons">
                            <img src="web/img/Product_For_you15.png" >

                            <div class="icons ">
                              <svg width="22" height="20" viewBox="0 0 12 11" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M6.12366 10.0131L6.1221 10.0139C6.1002 10.0257 6.07572 10.0319 6.05086 10.0319C6.02599 10.0319 6.00152 10.0257 5.97962 10.0139L5.97805 10.0131C5.8717 9.95677 4.47935 9.19783 3.11763 8.0053C1.74185 6.80045 0.470521 5.21641 0.47045 3.51414C0.471379 2.72674 0.784581 1.97186 1.34136 1.41509C1.89813 0.858312 2.65301 0.54511 3.44041 0.54418C4.4404 0.544221 5.30265 0.972923 5.83708 1.68471L6.05086 1.96942L6.26463 1.68471C6.79906 0.972923 7.66132 0.544221 8.66131 0.54418C9.4487 0.54511 10.2036 0.858312 10.7604 1.41509C11.3172 1.9719 11.6304 2.72684 11.6313 3.51429C11.6311 5.21651 10.3598 6.80049 8.98409 8.0053C7.62236 9.19783 6.23001 9.95677 6.12366 10.0131Z" stroke="black" stroke-width="0.53465"/>
                                </svg>
                                <br>
                                <svg width="24" height="23" class="mt-1" viewBox="0 0 19 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <circle cx="9.03125" cy="10.0093" r="9.03125" fill="white"/>
                                  <path d="M7.59756 10.8514H3.37695V12.0555H7.59756V13.8618L9.99987 11.4534L7.59756 9.04512V10.8514ZM11.198 10.2493V8.44303H15.4186V7.23887H11.198V5.43262L8.7957 7.84095L11.198 10.2493Z" fill="black"/>
                                  </svg>


                            </div>

                          </div>

                          <div class="details">
                            <p>كريم لليدين للعنايه بمستحضرات التجميل والعناية ياليدين الناعمة</p>
                            <h5>0.38 US $ - 0.11 US $</h5>
                            <h6>ادنى كميةطلب :100قطعة</h6>
                          </div>


                        </div>


                      </div>

                      <!----------------------------->

                    </div>


                    <div class="button_show_more">
                      <button > <a href="#">
                        عرض المزيد
                      </a> </button>
                    </div>

                  </div>


                </div>

                <!------------------------->

                <div style="text-align: center;" class="mt-5 mb-5">

                  <img src="web/img/Group 29305.png" >

                </div>


                <!-- Countries -->



                  <div class="Countries pt-3 pb-5">


                    <div class="Countries_title">
                      <h3>ابحث عن موردين حسب البلد</h3>
                    </div>

                  <!-- Name and flag of the country -->

                  <div class="all_Countries">

                    <div class="Name_flag ">
                      <h6> <img src="web/img/Frame 427319168.png"> تايلاند</h6>
                      <h6> <img src="web/img/Frame 427319168 (1).png"> ماليزيا</h6>
                      <h6> <img src="web/img/Frame 427319168 (2).png"> ايطاليا</h6>
                      <h6> <img src="web/img/Frame 427319168 (3).png"> روسيا</h6>
                      <h6> <img src="web/img/Frame 427319168 (4).png"> اليابان</h6>
                      <h6> <img src="web/img/Frame 427319168 (5).png"> الصين</h6>

                    </div>

                    <div class="Name_flag ">
                      <h6> <img src="web/img/Frame 427319168.png"> تايلاند</h6>
                      <h6> <img src="web/img/Frame 427319168 (1).png"> ماليزيا</h6>
                      <h6> <img src="web/img/Frame 427319168 (2).png"> ايطاليا</h6>
                      <h6> <img src="web/img/Frame 427319168 (3).png"> روسيا</h6>
                      <h6> <img src="web/img/Frame 427319168 (4).png"> اليابان</h6>
                      <h6> <img src="web/img/Frame 427319168 (5).png"> الصين</h6>

                    </div>


                    <div class="Name_flag ">
                      <h6> <img src="web/img/Frame 427319168.png"> تايلاند</h6>
                      <h6> <img src="web/img/Frame 427319168 (1).png"> ماليزيا</h6>
                      <h6> <img src="web/img/Frame 427319168 (2).png"> ايطاليا</h6>
                      <h6> <img src="web/img/Frame 427319168 (3).png"> روسيا</h6>
                      <h6> <img src="web/img/Frame 427319168 (4).png"> اليابان</h6>
                      <h6> <img src="web/img/Frame 427319168 (5).png"> الصين</h6>

                    </div>


                  </div>


                  </div>


                  @endsection
