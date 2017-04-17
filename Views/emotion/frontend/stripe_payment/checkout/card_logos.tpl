{block name="frontend_checkout_payment_fieldset_description"}
    {if $Controller != "account" && $payment_mean.class == "StripePaymentCard"}
        <style type="text/css">
            {* Include shared CSS for payment provider logo SVGs *}
            {include file="frontend/stripe_payment/_resources/styles/stripe_payment_provider_logos.css"}
        </style>
        {* Inject the credit card logos before the additional description *}
        <div class="grid_10 last">
            {* Credit card logos *}
            <div class="stripe-payment-provider-logo visa"></div>
            <div class="stripe-payment-provider-logo mastercard"></div>
            <div class="stripe-payment-provider-logo american-express"></div>
            {* Default content *}
            <div class="grid_10 last" style="margin-top: 5px; margin-left: 0px;">
                {include file="string:{$payment_mean.additionaldescription}"}
            </div>
        </div>
    {else}
        {$smarty.block.parent}
    {/if}
{/block}
