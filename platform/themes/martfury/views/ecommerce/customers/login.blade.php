<script src="{{ asset('web/js/jquery-3.6.0.min.js') }}"></script>
<script>
    $(document).ready(function(){
        $('.n').click(function(){
            // alert("k;ugui")

        })

        $('.header_section').addClass('hidden')


    })
</script>


@php
    // Theme::set('stickyHeader', 'false');
    Theme::set('topHeader', Theme::partial('header-login'));


@endphp
<div class="ps-my-account loground">
    {!!
        $form
            ->formClass('ps-form--account')
            ->modify('submit', 'submit', [
                    'attr' => [
                        'class' => 'ps-btn ps-btn--fullwidth',
                    ],
                ])
            ->modify('remember', 'html', ['html' => sprintf('<div class="col-6"><div class="ps-checkbox">
                        <input class="form-control" type="checkbox" name="remember" id="remember-me">
                        <label for="remember-me" class="control-label">%s</label>
                    </div></div>', __('Remember me'))], true)
            ->renderForm()
    !!}
</div>

