<html lang="ar" dir="rtl">
    <head>
        <link rel="stylesheet" href={{ asset('web/css/bootstrap.min.css')}}>
        <script src="https://kit.fontawesome.com/595cec9e99.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href={{ asset('web/css/requst.css')}}>

    </head>
    <body>
        <div class="container">

            <div class="row justify-content-center">
                <div class="head ">
                    <h4 class="p-3">نشر طلب شراء</h4>
                </div>
                <div class="col-lg-10 bg-white shadow p-4 rounded-3 mb-5">

                    <div class="row">
                        <div class="col-lg-7">
                            <form>
                                <div class="mb-3">
                                    <label class="form-label">املأ متطلبات الشراء *</label>
                                    <p class="prod-name">أدخل اسم المنتج أو حدده من <a class="recom-prod" href=""> منتجات موصي بها</a></p>
                                    <input type="text" class="form-control shadow-none" required placeholder="يرجي ادخال">
                                    <p class="prod-name">لم يُعثر على فئة مطابقة.<a href="" class="recom-prod">انقر للاضافه</a></p>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-6">
                                        <label  class="form-label">حدد نطاق الميزانية *</label>
                                        <select required class="form-select shadow-none" aria-label="Default select example">
                                          <option value="1">  < 1000 </option>
                                          <option value="2">1000 - 5000</option>
                                          <option  selected value="3">5000 - 10000</option>
                                          <option value="4">10000 - 50000</option>
                                          <option value="5"> > 50000</option>
                                        </select>
                                    </div>
                                    <div class="col-6">
                                        <label class="form-label ">العملة</label>
                                        <select required class="form-control bfh-currencies shadow-none" data-currency="EUR"></select>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-6">
                                        <label  class="form-label">كمية الشراء *</label>
                                        <input type="number" class="form-control shadow-none" required placeholder="يرجي ادخال">
                                    </div>
                                    <div class="col-6">
                                        <label class="form-label opacity-0"> قياس</label>
                                        <select class="form-select shadow-none" aria-label="Default select example">
                                            <option value="1"> مجموعة </option>
                                            <option value="2">جرام</option>
                                            <option  selected value="3">قطعه</option>
                                            <option value="4">جالون</option>
                                            <option value="5">  كيلو</option>
                                          </select>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-6">
                                        <label  class="form-label"> شروط التجارة *</label>
                                        <select  class="form-select shadow-none" aria-label="Default select example">
                                            <option selected value="1"> FOB </option>
                                            <option value="2">EXW</option>
                                            <option value="3">FAS</option>
                                            <option value="4">FCA</option>
                                            <option value="5">  CFR</option>
                                            <option value="6">  CPT</option>
                                            <option value="7">  CIF</option>
                                            <option value="8">  CIP</option>
                                            <option value="9">  DES</option>
                                            <option value="10">  DAF</option>
                                            <option value="11">  DEQ</option>
                                            <option value="12"> DDP</option>
                                            <option value="13">  DDU</option>


                                          </select>
                                    </div>
                                </div>
                                <div class="mb-3 form-check">
                                  <label  class="form-label" >أدخل متطلباتك بالتفصيل *</label>
                                    <textarea class="form-control req-sec shadow-none" placeholder="للحصول على عروض أسعار أكثر دقة من المورِّدين، يمكنك وصف متطلباتك بالتفصيل، مثل احتياجاتك للتخصيص ومواد التعبئة والتغليف والشحن." id="floatingTextarea2" style="height: 100px"></textarea>
                                </div>
                                <div class="input-group mb-3">
                                    <input type="file" class="upload" id="uploadBtn" accept=".jpg, .jpeg, .png, .pdf, .docx, .doc, .xlsx, .xls">
                                    <label for="uploadBtn" class="upload-label p-4 rounded-2 d-inline-block"> <i class="fa-solid fa-cloud-arrow-up fs-1"></i></label>
                                </div>
                                <p class="prod-name ">Max file size: 10MB. Types supported: jpg, jpeg, png, pdf, docx, doc, xlsx, xls.</p>
                                    <div class="row mb-3">
                                        <label  class="form-label">قم بتأكيد عنوان بريدك الإلكتروني لتسجيل الدخول *</label>
                                        <input type="email" class="form-control shadow-none" required placeholder="يرجي ادخال">
                                    </div>
                                    <div class="mb-3 form-check">
                                        <input type="checkbox" class="form-check-input shadow-none" id="exampleCheck1">
                                        <label class="form-check-label " for="exampleCheck1">أوافق على مشاركة بطاقة العمل الخاصة بي مع البائعين الذين قدموا عروض الأسعار.</label>
                                      </div>
                                      <div class="mb3 form-check">
                                        <input type="checkbox" class="form-check-input shadow-none " id="exampleCheck2" required checked>
                                        <label class="form-check-label " for="exampleCheck2">لقد قرأت وفهمت ووافقت على الامتثال إلى<a class=" " href=""> قواعد نشر طلب الشراء.</a></label>
                                      </div>
                                      <div class="btn-div mt-3">
                                        <button type="submit" class=" submit-btn text-center  p-3 rounded-5 text-white border-0 ms-auto ">دعوة المورِّدين لتقديم عروض أسعار</button>

                                      </div>
                              </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>



        <script src={{ asset('web/js/bootstrap.bundle.min.js')}}></script>
        <script src={{ asset('web/js/main.js')}}></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-formhelpers/2.3.0/js/bootstrap-formhelpers.min.js"></script>

    </body>
</html>
