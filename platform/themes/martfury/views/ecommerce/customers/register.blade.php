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
    Theme::set('stickyHeader', 'false');
    Theme::set('topHeader', Theme::partial('header-login'));

@endphp
<div class="ps-my-account">
    {!!
        $form
            ->formClass('ps-form--account')
            ->modify('submit', 'submit', [
                    'attr' => [
                        'class' => 'ps-btn ps-btn--fullwidth',
                    ],
                ])
            ->renderForm()
    !!}
</div>
